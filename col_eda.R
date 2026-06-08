library(tidyverse)
library(survey)
library(patchwork)   # combining ggplot panels
library(scales)      # percent_format()
library(quantreg)

# ─────────────────────────────────────────────────────────────────────────────
# This script assumes Colombia_decomp and Colombia_decomp_svy exist from
# 1. colombia.R. All estimates use survey weights (Colombia$weight)
# to be population-representative. For plots we use Colombia_decomp directly
# with weight as an aesthetic where needed.
# ─────────────────────────────────────────────────────────────────────────────

theme_eda <- theme_minimal(base_size = 13) +
    theme(
        plot.title       = element_text(face = "bold", size = 14),
        plot.subtitle    = element_text(color = "grey40", size = 11),
        panel.grid.minor = element_blank(),
        strip.text       = element_text(face = "bold")
    )


# ─────────────────────────────────────────────────────────────────────────────
# 1. OUTCOME DISTRIBUTION
# Simple bar showing stunting prevalence with 95% CI from the survey design.
# Motivates: class imbalance is real but not extreme (13.5%); no upsampling
# needed, but the model must be evaluated on CI/decomposition, not accuracy.
# ─────────────────────────────────────────────────────────────────────────────

# Summary statistics for sample surveys
prev <- svymean(~stunting, Colombia_decomp_svy, na.rm = TRUE)

prev_df <- data.frame(
    label = c("Not stunted", "Stunted"),
    pct   = c(1 - coef(prev), coef(prev)),
    se    = c(SE(prev), SE(prev))
)

p1 <- ggplot(prev_df, aes(x = label, y = pct, fill = label)) +
    geom_col(width = 0.5, alpha = 0.85) +
    geom_errorbar(aes(ymin = pct - 1.96 * se, ymax = pct + 1.96 * se),
                  width = 0.15, linewidth = 0.7) +
    scale_y_continuous(labels = percent_format(accuracy = 1), limits = c(0, 1)) +
    scale_fill_manual(values = c("Not stunted" = "#4e9af1", "Stunted" = "#e05c5c")) +
    labs(title  = "1. Stunting prevalence (survey-weighted)",
         subtitle = "Colombia DHS 2000 — children under 5 (n = 3,743 complete cases)",
         x = NULL, y = NULL) +
    theme_eda + theme(legend.position = "none")

print(p1)
ggsave("eda_01_prevalence.pdf", p1, width = 5, height = 4)


# ─────────────────────────────────────────────────────────────────────────────
# 2. STUNTING RATE BY WEALTH DECILE
# The most direct visualization of the concentration index.
# Motivates: the negative CI (-0.268) reflects a pro-rich gradient — richer
# households have lower stunting. A monotone decline across deciles supports
# the smooth-gradient assumption of WDW; non-monotonicity would suggest
# segmentation (supporting tree methods).
# ─────────────────────────────────────────────────────────────────────────────

decile_df <- Colombia_decomp %>%
    mutate(wealth_decile = ntile(wealth, 10)) %>%
    group_by(wealth_decile) %>%
    summarise(
        stunting_rate = weighted.mean(stunting, weight, na.rm = TRUE),
        n             = n(),
        .groups       = "drop"
    )

p2 <- ggplot(decile_df, aes(x = wealth_decile, y = stunting_rate)) +
    geom_line(color = "#2c6fad", linewidth = 1.1) +
    scale_x_continuous(breaks = 1:10, labels = paste0("D", 1:10)) +
    scale_y_continuous(labels = percent_format(accuracy = 1)) +
    scale_size_continuous(range = c(2, 6), guide = "none") +
    labs(title    = "2. Stunting rate by wealth decile",
         subtitle = "Point size proportional to observations in decile",
         x = "Wealth decile (D1 = poorest)", y = "Stunting prevalence") +
    theme_eda

print(p2)
ggsave("eda_02_stunting_by_wealth_decile.pdf", p2, width = 7, height = 4)


# ─────────────────────────────────────────────────────────────────────────────
# 3. STUNTING RATE BY EACH COVARIATE
# Faceted bar chart showing weighted stunting rate per category.
# Motivates: which covariates show the strongest marginal gradient?
# These are candidates for large contributions in the WDW decomposition.
# ─────────────────────────────────────────────────────────────────────────────

# Build a long-format table: one row per (variable, category, stunting_rate)
compute_rates <- function(df, var) {
    df %>%
        group_by(category = as.character(.data[[var]])) %>%
        summarise(
            rate = weighted.mean(stunting, weight, na.rm = TRUE),
            n    = n(),
            .groups = "drop"
        ) %>%
        mutate(variable = var)
}

cat_vars <- c("quint", "birth", "agemoth", "ed", "ped", "mocc", "pocc",
              "reg", "unskilled", "male", "rural")

rates_long <- map_dfr(cat_vars, ~ compute_rates(Colombia_decomp, .x))

# Friendly variable labels for facets
var_labels <- c(
    quint     = "Wealth quintile (grouped)",
    birth     = "Birth order / interval",
    agemoth   = "Mother's age at birth",
    ed        = "Mother's education",
    ped       = "Partner's education",
    mocc      = "Mother's occupation",
    pocc      = "Partner's occupation",
    reg       = "Region",
    unskilled = "Unskilled delivery",
    male      = "Child sex (male)",
    rural     = "Rural residence"
)

rates_long <- rates_long %>%
    mutate(variable_label = var_labels[variable])

p3 <- ggplot(rates_long, aes(x = reorder(category, -rate), y = rate, fill = rate)) +
    geom_col(alpha = 0.85) +
    geom_text(aes(label = paste0(round(rate * 100, 1), "%")),
              hjust = -0.1, size = 3) +
    scale_y_continuous(labels = percent_format(accuracy = 1),
                       limits = c(0, max(rates_long$rate) * 1.2)) +
    scale_fill_gradient(low = "#aecbf0", high = "#c0392b", guide = "none") +
    coord_flip() +
    facet_wrap(~variable_label, scales = "free_y", ncol = 3) +
    labs(title    = "3. Stunting rate by covariate category",
         subtitle = "Weighted prevalence; higher = more stunting",
         x = NULL, y = "Stunting prevalence") +
    theme_eda

print(p3)
ggsave("eda_03_stunting_by_covariate.pdf", p3, width = 14, height = 10)


# ─────────────────────────────────────────────────────────────────────────────
# 4. WEALTH DISTRIBUTION BY COVARIATE
# Box plots of wealth by category for key covariates.
# Motivates: for a covariate to contribute to the CI it must BOTH affect
# stunting AND be correlated with wealth. This plot shows the second part.
# Covariates with wide between-group wealth gaps are the main CI drivers.
# ─────────────────────────────────────────────────────────────────────────────

box_vars <- c("quint", "ed", "ped", "rural", "mocc", "pocc", "reg")

# map_dfr() returns a data frame by row-binding or column-binding the
box_long <- map_dfr(box_vars, function(var) {
    Colombia_decomp %>%
        transmute(category = as.character(.data[[var]]),
                  wealth   = wealth,
                  weight   = weight,
                  variable = var)
})

box_long <- box_long %>%
    mutate(variable_label = var_labels[variable])

p4 <- ggplot(box_long, aes(x = reorder(category, wealth, FUN = median),
                           y = wealth)) +
    geom_boxplot(aes(weight = weight), fill = "#d4e8f7",
                 outlier.size = 0.5, outlier.alpha = 0.4) +
    geom_hline(yintercept = 0, linetype = "dashed", color = "grey50") +
    coord_flip() +
    facet_wrap(~variable_label, scales = "free_y", ncol = 3) +
    labs(title    = "4. Wealth distribution by covariate category",
         subtitle = "Ordered by median wealth; dashed line = overall median ≈ 0",
         x = NULL, y = "Wealth index score") +
    theme_eda

print(p4)
ggsave("eda_04_wealth_by_covariate.pdf", p4, width = 14, height = 10)


# ─────────────────────────────────────────────────────────────────────────────
# 5. WEALTH GRADIENT BY RURAL/URBAN AND BY EDUCATION (INTERACTION SIGNAL)
# Key plot for motivating Scenario B (interactions) and tree methods.
# If the wealth-stunting slope differs between rural/urban or education groups,
# the WDW linear decomposition will be misspecified — exactly Scenario B.
# A tree can find these subgroups automatically.
# ─────────────────────────────────────────────────────────────────────────────

interaction_df <- Colombia_decomp %>%
    mutate(
        wealth_decile = ntile(wealth, 10),
        rural_label   = ifelse(rural, "Rural", "Urban"),
        ed_label      = ifelse(ed == "a education", "Mother educated", "Mother not educated")
    )

# 5a — Rural vs urban
p5a_data <- interaction_df %>%
    group_by(wealth_decile, rural_label) %>%
    summarise(rate = weighted.mean(stunting, weight, na.rm = TRUE),
              .groups = "drop")

p5a <- ggplot(p5a_data, aes(x = wealth_decile, y = rate, color = rural_label)) +
    geom_line(linewidth = 1.1) +
    geom_point(size = 2) +
    scale_x_continuous(breaks = 1:10, labels = paste0("D", 1:10)) +
    scale_y_continuous(labels = percent_format(accuracy = 1)) +
    scale_color_manual(values = c("Rural" = "#c0392b", "Urban" = "#2980b9")) +
    labs(title    = "5a. Stunting by wealth decile × rural/urban",
         subtitle = "Parallel lines → additive; diverging lines → interaction",
         x = "Wealth decile", y = "Stunting rate", color = NULL) +
    theme_eda

# 5b — Mother's education
p5b_data <- interaction_df %>%
    group_by(wealth_decile, ed_label) %>%
    summarise(rate = weighted.mean(stunting, weight, na.rm = TRUE),
              .groups = "drop")

p5b <- ggplot(p5b_data, aes(x = wealth_decile, y = rate, color = ed_label)) +
    geom_line(linewidth = 1.1) +
    geom_point(size = 2) +
    scale_x_continuous(breaks = 1:10, labels = paste0("D", 1:10)) +
    scale_y_continuous(labels = percent_format(accuracy = 1)) +
    scale_color_manual(values = c("Mother educated"     = "#27ae60",
                                   "Mother not educated" = "#e67e22")) +
    labs(title    = "5b. Stunting by wealth decile × mother's education",
         subtitle = "Parallel lines → additive; diverging lines → interaction",
         x = "Wealth decile", y = "Stunting rate", color = NULL) +
    theme_eda

p5 <- p5a / p5b
print(p5)
ggsave("eda_05_interactions.pdf", p5, width = 9, height = 8)


# ─────────────────────────────────────────────────────────────────────────────
# 6. REGIONAL VARIATION IN STUNTING AND WEALTH
# Motivates including region as a covariate and considering regional subgroups
# in the tree analysis. Regions with both high stunting AND low wealth are
# the double-burden segments a tree should identify.
# ─────────────────────────────────────────────────────────────────────────────

region_labels <- c("1" = "Atlántica", "2" = "Oriental",
                    "3" = "Central",   "4" = "Pacífica", "5" = "Bogotá")

region_df <- Colombia_decomp %>%
    mutate(region_label = region_labels[as.character(region)]) %>%
    group_by(region_label) %>%
    summarise(
        stunting_rate = weighted.mean(stunting, weight, na.rm = TRUE),
        median_wealth = weighted.mean(wealth, weight, na.rm = TRUE),
        n             = n(),
        .groups       = "drop"
    )

p6 <- ggplot(region_df, aes(x = median_wealth, y = stunting_rate,
                              label = region_label, size = n)) +
    geom_point(color = "#8e44ad", alpha = 0.75) +
    geom_text(vjust = -0.9, size = 4, color = "#333333") +
    scale_y_continuous(labels = percent_format(accuracy = 1)) +
    scale_size_continuous(range = c(4, 10), guide = "none") +
    labs(title    = "6. Regional stunting rate vs mean wealth",
         subtitle = "Point size = observations; upper-left = high-risk regions",
         x = "Mean wealth index (survey-weighted)",
         y = "Stunting rate") +
    theme_eda

print(p6)
ggsave("eda_06_regional.pdf", p6, width = 7, height = 5)


# ─────────────────────────────────────────────────────────────────────────────
# 7. CONCENTRATION CURVE
# Plots the cumulative share of stunting against the cumulative share of the
# population ranked by wealth. The area between this curve and the 45° line
# of equality is half the concentration index.
# Motivates: makes the CI concrete and visual; a curve bowing above the
# diagonal means stunting is concentrated among the poor (negative CI).
# ─────────────────────────────────────────────────────────────────────────────

cc_df <- Colombia_decomp %>%
    arrange(R) %>%                          # sort by wealth rank
    mutate(
        cum_pop     = cumsum(weight) / sum(weight),
        cum_stunting = cumsum(stunting * weight) / sum(stunting * weight)
    )

p7 <- ggplot(cc_df, aes(x = cum_pop, y = cum_stunting)) +
    geom_line(color = "#c0392b", linewidth = 1.1) +
    geom_abline(slope = 1, intercept = 0, linetype = "dashed", color = "grey50") +
    annotate("text", x = 0.35, y = 0.55,
             label = paste0("CI = ", round(ci_colombia$concentration_index, 3)),
             size = 4.5, color = "#c0392b", fontface = "bold") +
    scale_x_continuous(labels = percent_format(accuracy = 1)) +
    scale_y_continuous(labels = percent_format(accuracy = 1)) +
    labs(title    = "7. Concentration curve — stunting",
         subtitle = "Curve above diagonal → stunting concentrated among the poor (CI < 0)",
         x = "Cumulative share of population (poorest → richest)",
         y = "Cumulative share of stunting") +
    theme_eda

print(p7)
ggsave("eda_07_concentration_curve.pdf", p7, width = 6, height = 5)


# ─────────────────────────────────────────────────────────────────────────────
# 8. WDW DECOMPOSITION WATERFALL
# Visualises the output of c_col (from 1. colombia.R) as a waterfall chart so
# you can see which covariates are the largest contributors to the CI.
# Motivates: shows whether a linear decomposition "uses up" the CI cleanly
# (small residual) or leaves large unexplained portions (motivating trees).
# ─────────────────────────────────────────────────────────────────────────────

decomp_df <- as.data.frame(summary(c_col)) %>%
    rownames_to_column("variable") %>%
    rename(contribution_pct = `Contribution (%)`) %>%
    arrange(contribution_pct) %>%
    mutate(
        variable = factor(variable, levels = variable),
        direction = ifelse(contribution_pct < 0, "Increases CI", "Decreases CI"),
        is_residual = variable == "residual"
    )

p8 <- ggplot(decomp_df, aes(x = contribution_pct, y = variable,
                              fill = direction, alpha = is_residual)) +
    geom_col() +
    geom_vline(xintercept = 0, color = "black", linewidth = 0.5) +
    scale_fill_manual(values = c("Increases CI" = "#c0392b",
                                  "Decreases CI" = "#2980b9")) +
    scale_alpha_manual(values = c("TRUE" = 0.45, "FALSE" = 0.85),
                       guide = "none") +
    labs(title    = "8. WDW decomposition — contribution to CI",
         subtitle = "Residual (faded) = unexplained share of the concentration index",
         x = "Contribution (%)", y = NULL, fill = NULL) +
    theme_eda +
    theme(legend.position = "bottom")

print(p8)
ggsave("eda_08_wdw_decomposition.pdf", p8, width = 9, height = 7)


# ─────────────────────────────────────────────────────────────────────────────
# COMBINED SUMMARY PANEL (plots 2, 5a, 7, 8)
# A single 4-panel figure suitable for a thesis methods section.
# ─────────────────────────────────────────────────────────────────────────────

panel <- (p2 | p7) / (p5a | p8) +
    plot_annotation(
        title   = "Colombia DHS 2000 — Socioeconomic inequality in child stunting",
        caption = "Survey-weighted estimates. n = 3,743 complete cases (Colombia_decomp).",
        theme   = theme(plot.title = element_text(face = "bold", size = 15))
    )

print(panel)
ggsave("eda_panel_thesis.pdf", panel, width = 14, height = 10)

cat("\nAll EDA plots saved. Files written:\n")
cat("  eda_01_prevalence.pdf\n")
cat("  eda_02_stunting_by_wealth_decile.pdf\n")
cat("  eda_03_stunting_by_covariate.pdf\n")
cat("  eda_04_wealth_by_covariate.pdf\n")
cat("  eda_05_interactions.pdf\n")
cat("  eda_06_regional.pdf\n")
cat("  eda_07_concentration_curve.pdf\n")
cat("  eda_08_wdw_decomposition.pdf\n")
cat("  eda_panel_thesis.pdf\n")
