
################################# Common ground ##################################

# ─────────────────────────────────────────────────────────────────────────────
# PURPOSE
#   Generate three synthetic datasets with known data-generating processes (DGPs)
#   so we can evaluate the traditional WDW decomposition and the CI-based tree
#   (rpart_ci) against ground truth.
#
# THREE SCENARIOS
#   A — Additive, no interactions.
#       DGP matches WDW assumptions exactly. Expected: WDW explains most of the
#       CI; tree adds little; per-leaf CIs are homogeneous.
#
#   B — Interactions (wealth × rural, wealth × education).
#       DGP violates the linearity assumed by WDW. Expected: WDW residual is
#       large; tree detects the poor+rural and poor+uneducated subgroups as top
#       splits; per-leaf CIs vary substantially.
#
#   C — Pure hierarchical segmentation (tree-friendly).
#       DGP is a step function over NESTED wealth/covariate segments — exactly
#       the structure a classification tree can recover perfectly. The segments
#       are designed as consecutive, non-overlapping wealth × binary-covariate
#       leaves so that both CART (Gini) and rpart_ci (|CI| criterion) have a
#       fair chance of identifying them.
#       Expected: WDW fails (no smooth gradient); rpart_ci recovers segments
#       exactly; per-leaf CIs collapse to ≈ 0 inside the recovered leaves.

# ─────────────────────────────────────────────────────────────────────────────

library(rineq)
library(dplyr)

set.seed(123)

n        <- 4000   # nrow(Colombia_decomp) == 3743; round up to a clean number
n_clust  <- 100    # number of simulated clusters (mimics DHS PSU structure)

# ── Cluster and subregion structure ──────────────────────────────────────────
# run_wdw() in 4__simulations_models.R uses id = ~cluster, strata = ~subregion,
# consistent with Colombia's survey design. 
# 100 clusters -> 10 subregions -> 10 clusters per subregion
cluster_sim   <- sample(1:n_clust, n, replace = TRUE)
subregion_sim <- ((cluster_sim - 1L) %/% 10L) + 1L


# ── Wealth score ──────────────────────────────────────────────────────────────
# Generated to roughly match Colombia's observed distribution:
#   mean ≈ −0.21, SD ≈ 1.04, range [−3.08, 0.98].
wealth <- rnorm(n, mean = -0.21, sd = 1.04)

# ── Covariates ────────────────────────────────────────────────────────────────
# Binary, matching rough Colombia prevalences.
rural      <- rbinom(n, 1L, 0.33)
education  <- rbinom(n, 1L, 0.74)
mother_age <- rnorm(n, 25, 6)

# ── Survey weights ────────────────────────────────────────────────────────────
# Uniform here; real DHS weights are near 1 after normalisation.
weight <- runif(n, 0.5, 2)
weight <- weight / mean(weight)

# ── Pre-computed wealth rank ───────────────────────────────────────────────────
# Used in CI evaluation downstream.
R_sim <- rineq::rank_wt(wealth, weight)

# ── Intercept calibrated to prevalence ≈ 0.13 ────────────────────────────────
intercept <- qlogis(0.13)   # given a probability, returns a log-odds

# ── Wealth quantile thresholds ────────────────────────────────────────────────
# Using quantile-based cutoffs so segment boundaries are meaningful regardless
# of the wealth distribution's shape.
q30 <- quantile(wealth, 0.30)
q40 <- quantile(wealth, 0.40)
q50 <- quantile(wealth, 0.50)
q70 <- quantile(wealth, 0.70)


################################## Scenario A ##################################

# ─────────────────────────────────────────────────────────────────────────────
# Additive, no interactions — matches WDW decomposition assumptions exactly.
# Every individual faces the SAME coefficient vector. The CI is driven by the
# wealth gradient via rank (−2.0 × R_sim), plus small independent contributions
# from rural status, education, and mother's age.
#
# Ground truth: wealth rank explains ~80 % of the CI; the residual term in WDW
# should be small (model is correctly specified). A standard CART tree will
# find splits but they will not substantially reduce per-leaf CI heterogeneity.
# ─────────────────────────────────────────────────────────────────────────────

# Linear predictor
linpred_A <- intercept +
  (-2.0 * R_sim) +         # wealth gradient via rank (standard in CI literature)
  ( 0.8 * rural) +
  (-0.7 * education) +
  ( 0.02 * mother_age)

# Convert to probability ~ plogis: logistic distribution ~ CDF distribution function
p_A        <- plogis(linpred_A) # given a log-odds, returns a probability

# Binary outcome ~ rbinom: binomial distribution ~ random generation
stunting_A <- rbinom(n, 1L, p_A)


################################## Scenario B ##################################

# ─────────────────────────────────────────────────────────────────────────────
# Strong multiplicative interactions — violates WDW linearity assumptions.
# The wealth gradient is present throughout (−1.2 × R_sim), but:
#   • Being rural amplifies stunting risk ONLY for the poor (wealth < q40).
#   • Lacking education amplifies stunting risk ONLY for the poor (wealth < q50).
#
# The WDW model omits the interaction terms. When it tries to decompose the CI
# it will attribute too little to rural/education (because the mean effects are
# modest) and carry a large residual. 

# The CI-based tree (rpart_ci) should likewise detect these subgroups, because
# within the poor+rural cell the health–wealth gradient differs markedly from
# the rest of the population.
# ─────────────────────────────────────────────────────────────────────────────

linpred_B <- intercept +
  (-1.2 * R_sim) +
  ( 0.5 * rural) +
  (-0.5 * education) +
  # Interaction: being poor amplifies the rural and education penalties
  ( 2.0 * rural      * (wealth < q40)) +
  ( 1.5 * (education == 0L) * (wealth < q50))

# Convert to probability ~ plogis: logistic distribution ~ CDF distribution function
p_B        <- plogis(linpred_B) # given a log-odds, returns a probability

# Binary outcome ~ rbinom: binomial distribution ~ random generation
stunting_B <- rbinom(n, 1L, p_B)


################################## Scenario C ##################################

# ─────────────────────────────────────────────────────────────────────────────
# Pure hierarchical segmentation — designed to be tree-friendly with |CI| as
# the splitting criterion.
#
# DGP structure (depth-2 tree with 3 leaves):
#
#   ROOT
#   └─ wealth < q40?
#      ├─ YES (poor, ~40 % of sample)
#      │   └─ rural == 1?
#      │      ├─ YES → LEAF 1: high-risk  (poor + rural)    prob ≈ 0.45
#      │      └─ NO  → LEAF 2: medium-risk (poor + urban)   prob ≈ 0.20
#      └─ NO  (better-off, ~60 % of sample)
#             → LEAF 3: low-risk                            prob ≈ 0.07
#
# Key properties for the CI-based tree:
#   1. The step from prob ≈ 0.07 (rich) to prob ≈ 0.45 (poor+rural) creates a
#      large negative CI at the root: poor children carry most of the health
#      burden and are concentrated at the bottom of the wealth ranking.
#   2. Splitting on wealth < q40 separates a high-|CI| node (poor, where health
#      is further stratified by rural status) from a near-uniform low-|CI| node
#      (better-off). The split maximises the reduction in weighted |CI|.
#   3. Splitting on rural within the poor node further reduces |CI| there: each
#      resulting leaf has a near-constant probability (≈ 0.45 or ≈ 0.20), so
#      the health–wealth gradient within each leaf is flat → |CI| ≈ 0.
#   4. There is NO smooth wealth gradient: probability is a step function. WDW's
#      linear coefficient on wealth will be misspecified, and the residual will
#      be large.
#
# Why NON-OVERLAPPING segments matter:
#   The previous design used "wealth < q30 & rural == 1" AND "wealth < q50 &
#   education == 0" simultaneously. These conditions overlap (obs can satisfy
#   both), so there is no single sequence of axis-aligned splits that perfectly
#   separates them. The new design is strictly hierarchical: the second split
#   condition (rural) applies only within the left child of the wealth split,
#   making the structure exactly representable as a depth-2 binary tree.
# ─────────────────────────────────────────────────────────────────────────────

# Assign base log-odds per leaf
# qlogis: given a probability, returns a log-odds
logodds_C <- case_when(
  wealth < q40 & rural == 1L ~ qlogis(0.45),   # Leaf 1: poor + rural
  wealth < q40 & rural == 0L ~ qlogis(0.20),   # Leaf 2: poor + urban
  TRUE                        ~ qlogis(0.07)    # Leaf 3: better-off (any rural)
)

# Convert to probability ~ plogis: logistic distribution ~ CDF distribution function
p_C        <- plogis(logodds_C)    # given a log-odds, returns a probability

# Binary outcome ~ rbinom: binomial distribution ~ random generation
stunting_C <- rbinom(n, 1L, p_C)

# Ground-truth segment labels — used to evaluate how well tree methods recover
# the known structure (Step 5 in 4__simulations_models.R).
segment_C <- case_when(
  wealth < q40 & rural == 1L ~ "leaf1: poor+rural",
  wealth < q40 & rural == 0L ~ "leaf2: poor+urban",
  TRUE                        ~ "leaf3: better-off"
)


############################### Simulated dataset ##############################

sim_data <- data.frame(
  # Outcomes
  stunting_A,
  stunting_B,
  stunting_C,
  # True probabilities (for diagnostic use in models script)
  true_prob_A = p_A,
  true_prob_B = p_B,
  true_prob_C = p_C,
  # Ground-truth segment for Scenario C
  segment_C,
  # Socioeconomic and covariate columns
  wealth,
  R_sim,
  rural,
  education,
  mother_age,
  # Survey design columns
  weight,
  cluster   = cluster_sim,
  subregion = subregion_sim
)

# ── Sanity checks ─────────────────────────────────────────────────────────────

cat("=== Scenario prevalences ===\n")
cat(sprintf("  A: %.3f  (target ≈ 0.13)\n", mean(stunting_A)))
cat(sprintf("  B: %.3f\n",                   mean(stunting_B)))
cat(sprintf("  C: %.3f\n",                   mean(stunting_C)))

cat("\n=== Scenario C leaf sizes ===\n")
print(table(segment_C))

cat("\n=== Scenario C leaf mean probabilities ===\n")
print(
  sim_data %>%
    group_by(segment_C) %>%
    summarise(
      n          = n(),
      mean_prob  = round(mean(true_prob_C), 3),
      prevalence = round(mean(stunting_C),  3),
      .groups    = "drop"
    )
)

# ── Concentration Indices by scenario ─────────────────────────────────────────

ci_A <- rineq::ci(ineqvar = sim_data$wealth,
                  outcome = sim_data$stunting_A,
                  weights = sim_data$weight)
ci_B <- rineq::ci(ineqvar = sim_data$wealth,
                  outcome = sim_data$stunting_B,
                  weights = sim_data$weight)
ci_C <- rineq::ci(ineqvar = sim_data$wealth,
                  outcome = sim_data$stunting_C,
                  weights = sim_data$weight)

cat("\n=== Overall Concentration Indices ===\n")
cat("CI Scenario A:", round(ci_A$concentration_index, 4), "\n")
cat("CI Scenario B:", round(ci_B$concentration_index, 4), "\n")
cat("CI Scenario C:", round(ci_C$concentration_index, 4), "\n")

# A negative CI means ill-health (stunting) is disproportionately concentrated
# among the poor (bottom of the wealth ranking).
# Scenario A: moderate negative CI driven by the −2.0 × R_sim term.
# Scenario B: larger |CI| because interactions amplify poor-specific risk.
# Scenario C: large |CI| driven by the step-function segmentation; the
#             poor+rural leaf (40 % of poor) has prob ≈ 0.45 vs 0.07 elsewhere.

