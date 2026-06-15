
library(tidyverse)
library(rpart)         # required by rpart_ci internally
library(rpart.plot)    # tree visualisation
library(rineq)         # CI and WDW decomposition
library(survey)        # svyglm for WDW baseline

# Keep relevant objects from '3.simulations.R'
rm(list=setdiff(ls(), "sim_data"))

# loads rpart_ci.R UDFs
source("rpart_ci.R")


# ─────────────────────────────────────────────────────────────────────────────
# OVERVIEW
#
# For each scenario (A, B, C) we compare exactly two methods:
#
#   Method 1 — WDW (Wagstaff-van Doorslaer-Watanabe) decomposition
#     svyglm (quasibinomial) + rineq::contribution() on the training set.
#     A correctly-specified linear model should explain most of the CI for
#     Scenario A; the residual grows as the DGP departs from linearity (B, C).
#
#   Method 2 — CI-based tree (rpart_ci)
#     rpart_ci() from rpart_ci.R: each split maximises the reduction in
#     weighted |CI| across the two child nodes. Evaluated on the held-out
#     test set via ci_by_leaf(). Lower mean leaf |CI| = more of the
#     socioeconomic gradient has been explained by the tree's subgrouping.
#
# ─────────────────────────────────────────────────────────────────────────────


############################# Helper Functions #################################

# ── run_wdw() ─────────────────────────────────────────────────────────────────
# WDW decomposition on a training dataframe.
# Uses id = ~cluster, strata = ~subregion to match Colombia's survey design.
# sim_data includes these columns (added in 3__simulations.R).
run_wdw <- function(data, outcome_var, wealth_var = "wealth",
                    covariates, weight_var = "weight",
                    cluster_var = "cluster", strata_var = "subregion") {

    model_vars <- c(outcome_var, covariates, wealth_var,
                    weight_var, cluster_var, strata_var)
    df  <- na.omit(data[, model_vars])
    rownames(df) <- NULL

    svy <- svydesign(
        id      = as.formula(paste0("~", cluster_var)),
        strata  = as.formula(paste0("~", strata_var)),
        weights = as.formula(paste0("~", weight_var)),
        data    = df,
        nest    = TRUE
    )

    fmla <- as.formula(
        paste("as.numeric(", outcome_var, ") ~",
              paste(covariates, collapse = " + "))
    )
    m     <- svyglm(fmla, design = svy, family = quasibinomial, data = df)
    c_obj <- rineq::contribution(m, df[[wealth_var]])

    list(model = m, contribution = c_obj, data = df)
}


# ── run_tree_ci() ─────────────────────────────────────────────────────────────
# Fits a CI-based tree using rpart_ci() from rpart_ci.R.
# Binary/categorical predictors are converted to factor internally so the
# caller does not need to worry about pre-conversion.
run_tree_ci <- function(data, outcome_var, covariates,
                        wealth_var  = "wealth",
                        weight_var  = "weight",
                        cp          = 0.005,
                        minsplit    = 200,
                        minbucket   = 50) {

    model_vars <- c(outcome_var, wealth_var, covariates, weight_var)
    df <- na.omit(data[, model_vars])
    rownames(df) <- NULL

    # rpart_ci requires binary/categorical predictors to be factors; otherwise
    # rpart treats 0/1 numerics as continuous and evaluates n-1 spurious cuts.
    binary_preds <- covariates[sapply(covariates, function(v) {
        col <- df[[v]]
        is.numeric(col) && length(unique(col[!is.na(col)])) <= 2L
    })]
    for (v in binary_preds) df[[v]] <- factor(df[[v]])

    fmla <- as.formula(
        paste("cbind(", wealth_var, ",", outcome_var, ") ~",
              paste(covariates, collapse = " + "))
    )

    tree <- rpart_ci(
        formula   = fmla,
        data      = df,
        weights   = df[[weight_var]],
        cp        = cp,
        minsplit  = minsplit,
        minbucket = minbucket
    )

    list(tree = tree, data = df)
}


# ── extract_ci_explained() ────────────────────────────────────────────────────
# Computes the observed concentration index for the cross-scenario table:
#
#   total_CI
#     The observed concentration index of the health outcome against the wealth
#     ranking, computed directly via rineq::ci(ineqvar = wealth, outcome = h,
#     weights = weight) on the raw outcome.
#
#
# ARGS
#   data         Data frame containing the raw outcome, wealth, and weight
#                 columns (e.g. wdw_X$data).
#   outcome_var  Character; name of the binary health outcome column.
#   wealth_var   Character; name of the wealth ranking column. Default "wealth".
#   weight_var   Character; name of the survey weight column. Default "weight".
#
# RETURNS  data frame: total_CI
extract_ci_explained <- function(data, outcome_var,
                                  wealth_var = "wealth", weight_var = "weight") {

    # total_CI: raw bivariate CI, computed directly and independently of any
    # decomposition-internal sign correction.
    obs_ci <- rineq::ci(
        ineqvar = data[[wealth_var]],
        outcome = data[[outcome_var]],
        weights = data[[weight_var]]
    )$concentration_index

    data.frame(
        total_CI = round(obs_ci, 4)
    )
}



# ── mean_abs_leaf_ci() ────────────────────────────────────────────────────────
# Leaf-size-weighted mean of |CI| across all leaves of a CI tree.
# Lower = tree has partitioned the population into subgroups that are each
# more internally equal (in the SES-health sense) than the root.
# Used in the summary table and in the cp tuning simulation.
mean_abs_leaf_ci <- function(leaf_ci_df) {
    # ci_by_leaf() from rpart_ci.R returns a column named ci_signed.
    valid <- leaf_ci_df[!is.na(leaf_ci_df$ci_signed), ]
    if (nrow(valid) == 0L) return(NA_real_)
    weighted.mean(abs(valid$ci_signed), valid$n)
}


##################### cp Justification via Simulation #########################

# ─────────────────────────────────────────────────────────────────────────────
# tune_cp_simulation()
#
# WHY
#   cp is the complexity parameter: a split is only retained if it reduces the
#   root |CI| by at least cp × |CI_root|. A very small cp risks over-fitting
#   (splits on noise); a large cp prunes real structure away. Rather than
#   choosing cp ad-hoc, we justify it empirically: across R independent datasets
#   drawn from the same DGP, the cp that consistently minimises out-of-sample
#   mean leaf |CI| is the data-justified choice.
#
# HOW
#   For each cp in cp_grid:
#     1. Draw R synthetic datasets from dgp_fn(n, seed).
#     2. Split 80/20 train/test.
#     3. Fit rpart_ci on training set.
#     4. Compute mean leaf |CI| on test set.
#     5. Report mean ± SD across the R replicates.
#
#   The cp at the elbow of the resulting curve is reported. You can then write:
#   "cp = X was selected based on a 50-replicate simulation minimising
#   out-of-sample mean leaf |CI| under the assumed DGP."
#
# PARAMETERS
#   dgp_fn      Function(n, seed) returning a data frame with outcome_var,
#               wealth_var, weight_var, and all covariates.
#   n           Sample size per replicate (default 4000).
#   R           Replicates (default 50 for speed).
#   cp_grid     Candidate cp values.
#   base_seed   Each replicate uses base_seed + replicate_index.
#
# RETURNS  data frame: cp | mean_leaf_ci | sd_leaf_ci | n_valid_reps
# ─────────────────────────────────────────────────────────────────────────────
tune_cp_simulation <- function(
    dgp_fn,
    n            = 4000,
    R            = 50,
    cp_grid      = c(0.001, 0.002, 0.005, 0.01, 0.02, 0.05, 0.10),
    outcome_var  = "stunting_C",
    wealth_var   = "wealth",
    weight_var   = "weight",
    covariates   = c("rural", "education", "mother_age"),
    minsplit     = 200,
    minbucket    = 50,
    base_seed    = 100
) {
    results <- lapply(cp_grid, function(cp_val) {

        rep_metrics <- vapply(seq_len(R), function(r) {

            dat <- dgp_fn(n = n, seed = base_seed + r)

            idx   <- sample(seq_len(nrow(dat)), size = floor(0.8 * nrow(dat)))
            train <- dat[ idx, ]
            test  <- dat[-idx, ]

            fit <- tryCatch(
                run_tree_ci(
                    data        = train,
                    outcome_var = outcome_var,
                    covariates  = covariates,
                    wealth_var  = wealth_var,
                    weight_var  = weight_var,
                    cp          = cp_val,
                    minsplit    = minsplit,
                    minbucket   = minbucket
                ),
                error = function(e) NULL
            )
            if (is.null(fit)) return(NA_real_)

            # Stump: return the overall test-set |CI| as the metric
            n_leaves <- sum(fit$tree$frame$var == "<leaf>")
            if (n_leaves <= 1L) {
                return(tryCatch(
                    abs(rineq::ci(ineqvar = test[[wealth_var]],
                                  outcome = test[[outcome_var]],
                                  weights = test[[weight_var]])$concentration_index),
                    error = function(e) NA_real_
                ))
            }

            # Apply the same factor conversion to test data
            test2 <- as.data.frame(test)
            for (v in covariates) {
                if (is.numeric(test2[[v]]) && length(unique(test2[[v]])) <= 2L)
                    test2[[v]] <- factor(test2[[v]])
            }

            leaf_ci <- tryCatch(
                ci_by_leaf(tree       = fit$tree,
                           data       = test2,
                           wealth_var = wealth_var,
                           health_var = outcome_var,
                           weight_var = weight_var),
                error = function(e) NULL
            )
            if (is.null(leaf_ci)) return(NA_real_)
            mean_abs_leaf_ci(leaf_ci)

        }, numeric(1L))

        data.frame(
            cp           = cp_val,
            mean_leaf_ci = round(mean(rep_metrics, na.rm = TRUE), 5),
            sd_leaf_ci   = round(sd(rep_metrics,   na.rm = TRUE), 5),
            n_valid_reps = sum(!is.na(rep_metrics))
        )
    })

    do.call(rbind, results)
}


# ── plot_cp_tuning() ──────────────────────────────────────────────────────────
plot_cp_tuning <- function(tuning_df, scenario_label = "") {
    ggplot(tuning_df, aes(x = cp, y = mean_leaf_ci)) +
        geom_ribbon(aes(ymin = mean_leaf_ci - sd_leaf_ci,
                        ymax = mean_leaf_ci + sd_leaf_ci),
                    fill = "steelblue", alpha = 0.25) +
        geom_line(colour = "steelblue", linewidth = 1) +
        geom_point(colour = "steelblue", size = 2) +
        scale_x_log10(breaks = tuning_df$cp,
                      labels = as.character(tuning_df$cp)) +
        labs(
            title    = paste0("cp tuning — CI tree",
                              if (nchar(scenario_label)) paste0(" (", scenario_label, ")")),
            subtitle = "Mean ± 1 SD of weighted mean |CI| per leaf (test set, 50 replicates)",
            x        = "cp  (log scale)",
            y        = "Mean |CI| per leaf (lower = better)"
        ) +
        theme_minimal(base_size = 13)
}

dgp_C <- function(n = 4000, seed = 1L) {
    set.seed(seed)
    wealth     <- rnorm(n, -0.21, 1.04)
    rural      <- rbinom(n, 1L, 0.33)
    education  <- rbinom(n, 1L, 0.74)
    mother_age <- rnorm(n, 25, 6)
    weight     <- runif(n, 0.5, 2); weight <- weight / mean(weight)
    q40        <- quantile(wealth, 0.40)
    logodds    <- case_when(
        wealth < q40 & rural == 1L ~ qlogis(0.45),
        wealth < q40 & rural == 0L ~ qlogis(0.20),
        TRUE                        ~ qlogis(0.07)
    )
    data.frame(stunting_C = rbinom(n, 1L, plogis(logodds)),
               wealth, rural, education, mother_age, weight)
}


############################ Shared Settings ###################################

# Covariates for WDW (wealth is a predictor alongside rural, education, mother_age)
sim_covariates    <- c("wealth", "rural", "education", "mother_age")

# Covariates for the CI tree (wealth moves to the cbind() LHS response)
sim_covariates_ci <- c("rural", "education", "mother_age")

# 80 / 20 train-test split — fixed seed, done once for all three scenarios.
set.seed(42)
train_idx <- sample(seq_len(nrow(sim_data)), size = floor(0.8 * nrow(sim_data)))
sim_train <- sim_data[ train_idx, ]
sim_test  <- sim_data[-train_idx, ]

cat("Training set:", nrow(sim_train), "observations\n")
cat("Test set:    ", nrow(sim_test),  "observations\n\n")


#################################### Models ####################################

#####  Scenario A — Additive #####
#
# WDW is correctly specified here; it should explain the bulk of the CI.
# The CI tree is expected to be a stump (no split reduces |CI| enough) or very
# shallow, because the wealth gradient is already captured additively and there
# are no subgroups with a markedly different SES-health gradient.

cat("\n========== SCENARIO A ==========\n")

## WDW
wdw_A <- run_wdw(data = sim_train, outcome_var = "stunting_A",
                 covariates = sim_covariates)
cat("\n--- WDW Decomposition (Scenario A) ---\n")
print(summary(wdw_A$contribution))

## CI tree
tree_ci_A <- run_tree_ci(data = sim_train, outcome_var = "stunting_A",
                         covariates = sim_covariates_ci, cp=0.02)
cat("\n--- CI tree structure (Scenario A) ---\n")
print(tree_ci_A$tree)

suppressWarnings(
    rpart.plot(tree_ci_A$tree, type = 4, extra = 0, roundint = FALSE,
               main = "Scenario A — CI tree   Additive DGP")
)

tree_ci_A$tree$variable.importance

## CI per leaf on train set
print(ci_by_leaf(tree_ci_A$tree,
                 data       = sim_train,
                 wealth_var = "wealth",
                 health_var = "stunting_A",
                 weight_var = "weight"))

## CI per leaf on test set
leaf_ci_A <- ci_by_leaf(tree_ci_A$tree,
                        data       = sim_test,
                        wealth_var = "wealth",
                        health_var = "stunting_A",
                        weight_var = "weight")

print(leaf_ci_A)


##### Scenario B — Interactions #####
#
# WDW omits the interaction terms → misspecified; expect a large residual.
# The CI tree should detect the poor+rural and poor+uneducated subgroups as
# primary splits: within those groups the health–wealth gradient differs
# markedly from the rest of the population (stronger → higher |CI|), so the
# split earns a large improvement in weighted |CI|.

cat("\n========== SCENARIO B ==========\n")

## WDW
wdw_B <- run_wdw(data = sim_train, outcome_var = "stunting_B",
                 covariates = sim_covariates)
cat("\n--- WDW Decomposition (Scenario B) ---\n")
print(summary(wdw_B$contribution))

## CI tree
tree_ci_B <- run_tree_ci(data = sim_train, outcome_var = "stunting_B",
                         covariates = sim_covariates_ci, cp=0.02)
cat("\n--- CI tree structure (Scenario B) ---\n")
print(tree_ci_B$tree)
suppressWarnings(
    rpart.plot(tree_ci_B$tree, type = 4, extra = 0, roundint = FALSE,
               main = "Scenario B — CI tree   Interaction DGP")
)

tree_ci_B$tree$variable.importance

## CI per leaf on train set
print(ci_by_leaf(tree_ci_B$tree,
                 data       = sim_train,
                 wealth_var = "wealth",
                 health_var = "stunting_B",
                 weight_var = "weight"))

## CI per leaf on test set
leaf_ci_B <- ci_by_leaf(tree_ci_B$tree,
                        data       = sim_test,
                        wealth_var = "wealth",
                        health_var = "stunting_B",
                        weight_var = "weight")

print(leaf_ci_B)


##### Scneario C — Pure hierarchical segmentation #####
#
# DGP is a depth-2 step function (wealth < q40 → rural == 1); WDW has no
# smooth gradient to decompose → large residual expected.
# The CI tree should perfectly recover both splits: within each leaf the
# probability of stunting is constant, so the health–wealth gradient is flat
# and per-leaf |CI| ≈ 0.
# ─────────────────────────────────────────────────────────────────────────────

cat("\n========== SCENARIO C ==========\n")

## WDW
wdw_C <- run_wdw(data = sim_train, outcome_var = "stunting_C",
                 covariates = sim_covariates)
cat("\n--- WDW Decomposition (Scenario C) ---\n")
print(summary(wdw_C$contribution))

## CI tree
tree_ci_C <- run_tree_ci(data = sim_train, outcome_var = "stunting_C",
                         covariates = sim_covariates_ci, cp = 0.02)
cat("\n--- CI tree structure (Scenario C) ---\n")
print(tree_ci_C$tree)
suppressWarnings(
    rpart.plot(tree_ci_C$tree, type = 4, extra = 0, roundint = FALSE,
               main = "Scenario C — CI tree   Segmentation DGP")
)

tree_ci_C$tree$variable.importance

## CI per leaf on train set
print(ci_by_leaf(tree_ci_C$tree,
                 data       = sim_train,
                 wealth_var = "wealth",
                 health_var = "stunting_C",
                 weight_var = "weight"))

## CI per leaf on test set
leaf_ci_C <- ci_by_leaf(tree_ci_C$tree,
                        data       = sim_test,
                        wealth_var = "wealth",
                        health_var = "stunting_C",
                        weight_var = "weight")

print(leaf_ci_C)


###### cp Justification ######
#
# Scenario C has the clearest ground truth: a depth-2 tree with three leaves.
#
# Runtime: R = 50 × 7 cp values = 350 tree fits

cat("\n========== cp JUSTIFICATION (Scenario C) ==========\n")
cat("Running 50 replicates × 7 cp values — please wait...\n")

tuning_C <- tune_cp_simulation(
    dgp_fn      = dgp_C,
    n           = 4000,
    R           = 50,
    cp_grid     = c(0.001, 0.002, 0.005, 0.01, 0.02, 0.05, 0.10),
    outcome_var = "stunting_C",
    wealth_var  = "wealth",
    weight_var  = "weight",
    covariates  = sim_covariates_ci,
    minsplit    = 200,
    minbucket   = 50,
    base_seed   = 100
)

cat("\n--- cp Tuning Results (Scenario C) ---\n")
print(tuning_C)

cat(sprintf(
    "\nData-justified cp (minimises mean leaf |CI|): %.3f\n",
    tuning_C$cp[which.min(tuning_C$mean_leaf_ci)]
))

print(plot_cp_tuning(tuning_C, scenario_label = "Scenario C"))


###### Ground-truth recovery ######
#
# Cross-tabulate CI tree leaves against the known segment_C labels.
# Perfect recovery: each leaf maps 1-to-1 to exactly one segment.

cat("\n========== GROUND-TRUTH RECOVERY (Scenario C, test set) ==========\n")

sim_test_tagged <- sim_test
sim_test_tagged$rural     <- factor(sim_test_tagged$rural)
sim_test_tagged$education <- factor(sim_test_tagged$education)
sim_test_tagged <- add_leaf_col(tree_ci_C$tree, sim_test_tagged, col_name = "leaf_ci")

recovery_C <- sim_test_tagged %>%
    count(leaf_ci, segment_C) %>%
    group_by(leaf_ci) %>%
    mutate(pct = round(100 * n / sum(n), 1)) %>%
    ungroup() %>%
    arrange(leaf_ci, desc(pct))

print(recovery_C)


##### Cross-scenario summary table #####

cat("\n========== CROSS-SCENARIO SUMMARY TABLE ==========\n")

summary_table <- bind_rows(
    cbind(scenario = "A — Additive",
          extract_ci_explained(data = wdw_A$data, outcome_var = "stunting_A"),
          CItree_mean_abs_leaf_CI = round(mean_abs_leaf_ci(leaf_ci_A), 4)),

    cbind(scenario = "B — Interactions",
          extract_ci_explained(data = wdw_B$data, outcome_var = "stunting_B"),
          CItree_mean_abs_leaf_CI = round(mean_abs_leaf_ci(leaf_ci_B), 4)),

    cbind(scenario = "C — Segmentation",
          extract_ci_explained(data = wdw_C$data, outcome_var = "stunting_C"),
          CItree_mean_abs_leaf_CI = round(mean_abs_leaf_ci(leaf_ci_C), 4))
)

print(summary_table)


# ─────────────────────────────────────────────────────────────────────────────
# INTERPRETATION GUIDE
#
# total_CI
#   The raw observed concentration index, computed directly via rineq::ci() on
#   the outcome, wealth, and weight columns (independent of any decomposition-
#   internal sign correction). Negative = pro-poor inequality (ill-health
#   concentrated among the poor), positive = pro-rich.
#
# CItree_mean_abs_leaf_CI  (evaluated on the TEST set)
#   Leaf-size-weighted mean of |CI| across all terminal nodes. This statistic
#   uses LOCAL within-leaf wealth ranks and is evaluated on the test set, while
#   total_CI uses GLOBAL wealth ranks on the training set; the two are not
#   directly comparable as a before/after pair. CItree_mean_abs_leaf_CI is informative in its own right as a
#   measure of residual within-leaf inequality.
#
# cp justification (tuning_C)
#   Mean ± SD of test-set mean leaf |CI| across 50 replicates per cp value.
#   The optimal cp sits at the elbow — where further reduction in cp does not
#   meaningfully lower leaf |CI| (over-fitting territory to the left of elbow).
#
# Ground-truth recovery (Scenario C)
#   Perfect recovery: each tree leaf maps 1-to-1 to a known DGP segment.
#   Over-pruned: one leaf mixes two segments → cp too high.
#   Over-split:  one segment spans multiple leaves → cp too low.
# ─────────────────────────────────────────────────────────────────────────────
