library(tidyverse)
library(janitor)
library(haven)
library (skimr)


#### Import Datasets ####

setwd("C:/Users/Luis/Documents/UHasselt/Y2/S4/Master Thesis/Decomposing health inequalities through regression trees")

births <- read_sas("data/colombia/COBR41SD/COBR41FL.SAS7BDAT", NULL) %>%
    remove_empty("cols") 

household <- read_sas("data/colombia/COHR41SD/COHR41FL.SAS7BDAT", NULL) %>%
    remove_empty("cols")

wealth_index <- read_sas("data/colombia/COWI41SD/COWI41FL.SAS7BDAT", NULL)


#### Select Relevant Variables ####

births <- 
    births %>% 
    filter(V008-B3 < 60) %>% # to have children <5 years old (same as taking Children's Recode)
    select(
        # Respondent's (aka Mother) basic data
        # Section 01 (REC01)
        CASEID, # Case identification, used to uniquely identify each respondent.
        V001,   # Cluster number identifying the sample point as used during the fieldwork
        V002,   # Household number is the number identifying the household in which the respondent was interviewed, within the sample point. 
        V005,   # Sample weight is an 8 digit variable with 6 implied decimal places. All sample weights are normalized such that the weighted number of cases is identical to the unweighted number of cases when using the full dataset with no selection. This variable should be used to weight all tabulations produced using the data file.
        V008,   # century month code of date of interview
        V011,   # century month code of date of birth of the respondent
        V023,   # Sample domain defines the basic geographic units within which the sample was designed.
        V101,   # De facto region of residence.
        # Section 11 (REC11)
        V102,   # De facto type of place of residence. Whether the sample point number is defined as urban or rural. 
        V136,   # Total number of household members is the number of usual residents plus the number of visitors who slept in the house the previous night.
        V149,   # Educational achievement of the respondent
        # Reproduction
        # Section 21 (REC21)
        BORD,   # Birth order number gives the order in which the children were born and so is the reverse order from BIDX. 
        B3,     # Century month code for the date of birth of the child
        B4,     # Sex of child
        B5,     # Whether child was alive or dead at the time of the interview
        B5,     # Whether child was alive or dead at the time of interview
        B7,     # Age at death of the child in completed months gives a calculated age at death from the reported information. 
        B11,    # Preceding birth interval is calculated as the difference in months between the current birth and the previous birth, counting twins as one birth.
        # Maternity
        # Section 41 (REC41)
        MIDX,   # Index to maternal mortality history
        M3A,    # Delivery assisted with a doctor
        M3B,    # Delivery assisted with a nurse or midwife
        M15,    # Place of delivery of child.
        # Create a unified variable for M3A-N
        # Height and Weight 
        # Section 44 (REC44)
        HWIDX,  # Index to birth history
        HW2,    # Weight in kilograms
        HW3,    # Height in centimeters
        HW5,    # Height for Age standard deviations from the reference median
        # Create a variable using BMI to tell if a kid is stunted
        # Partner's Characteristics and Women's Work
        # Section 71 (REC71)
        V705,   # Standardized partner's occupation groups
        V717,   # Standardized respondent's occupation groups.
        V729,   # Educational achievement recodes the education of the partner.
        )

household <- 
    household %>%
    select(
        HV001,  # Cluster number is the number identifying the sample point as used during the fieldwork.
        HV002,  # Household number is the number identifying the household within the cluster or sample point.
        HHID,   # Case identification uniquely identifies each household. Concatenation of the sample point number and the household number.
        HV201,  # Major source of drinking water for members of the household.
        HV205,  # Type of toilet facility in the household.
        )


#### Rename Variables ####

births <-  births %>%
    rename(alive = B5,
           agedeath = B7,
           dateinterview = V008,
           datebirthchild = B3,
           doctor = M3A, 
           nurse = M3B,
           sex = B4,
           birthinterval = B11,
           datebirthmother = V011,
           typeresidence = V102,
           region = V101,
           educlevel = V149,
           peduclevel = V729,
           moccup = V717,
           poccup = V705,
           cluster = V001,
           household = V002,
           subregion = V023,
           weight = V005,
           householdmembers = V136,
           childweight = HW2,
           childheight = HW3,
           hfa = HW5,
    )

household <- 
    household %>%
    rename(
        sourcedrinkingwater = HV201,
        toilettype = HV205
    )

wealth_index <- 
    wealth_index %>%
    rename(
        wealth = WLTHINDF,
        quintile = WLTHIND5
    )


#### Define Variables ####

births <- births %>%
    mutate(deadu5 = case_when(alive == 0 & agedeath < 60 ~ 1,
                              alive == 1 ~ 0),
           agechild = dateinterview - datebirthchild,
           unskilled = case_when(doctor == 0 & nurse == 0 ~ 1, 
                                 doctor == 1 | nurse == 1 ~ 0),
           male = case_when(sex == 1 ~ 1, sex == 2 ~ 0),
           birth = case_when(BORD == 1 ~ "a first",
                             BORD %in% c(2,3,4) & birthinterval < 24 ~ "b 2-4 short",
                             BORD %in% c(2,3,4) & birthinterval >= 24 ~ "c 2-4 long",
                             BORD >= 5 & birthinterval < 24 ~ "d 5+ short",
                             BORD >= 5 & birthinterval >= 24 ~ "e 5+ long"),
           agemoth = case_when((datebirthchild - datebirthmother) / 12 < 20 
                               ~ "less than 20",
                               (datebirthchild - datebirthmother) / 12 >= 20
                               ~ "a20 or more"),
           rural = case_when(typeresidence == 1 ~ 0,
                             typeresidence == 2 ~ 1 ),
           reg = case_when(region == 1 ~ "Atlántica",
                           region == 2 ~ "Oriental",
                           region == 3 ~ "Central",
                           region == 4 ~ "Pacífica",
                           region == 5 ~ "Bogotá"),
           ed = case_when(
            educlevel %in% c(0, 1)       ~ "b no education",
            educlevel %in% c(2, 3, 4, 5) ~ "a education"
        ),
           ped = case_when(peduclevel %in% c(0,1) ~ "b no education",
                           peduclevel %in% c(2,3,4,5) ~ "a education"),
           mocc = case_when(moccup %in% c(0,6,9) ~ "c Household, unskilled manual, not working",
                            moccup %in% c(1,2,3,7,8) ~ "a other",
                            moccup %in% c(4,5) ~ "d Agriculture"),
           pocc = case_when(poccup %in% c(0,6,9) ~ "c Household, unskilled manual, not working",
                            poccup %in% c(1,2,3,7,8) ~ "a other",
                            poccup %in% c(4,5) ~ "d Agriculture"),
           hfa = ifelse(hfa > 9990, NA, hfa / 100),
           stunting = case_when(
                is.na(hfa) ~ NA_real_,
                hfa < -2 ~ 1,
                TRUE ~0
                )
    )

wealth_index <- wealth_index %>%
    mutate(
        quint = case_when(
            quintile %in% c(1,2)   ~ "b low",
            quintile %in% c(3,4,5) ~ "a high"
        )
    )


#### Set variable types ####

births <- births %>%
    mutate(deadu5 = as.logical(deadu5),
           agechild = as.integer(agechild),
           unskilled = as.logical(unskilled),
           male = as.logical(male),
           birth = as.factor(birth),
           agemoth = as.factor(agemoth),
           rural = as.logical(rural),
           region = as.factor(region),
           reg = as.factor(reg),
           ed = as.factor(ed),
           ped = as.factor (ped),
           mocc = as.factor(mocc),
           pocc = as.factor(pocc),
           household = as.integer(household)
    )

household <- 
    household %>%
    mutate(sourcedrinkingwater = as.factor(sourcedrinkingwater),
           toilettype = as.factor(toilettype))

wealth_index <- wealth_index %>%
    mutate(wealth = as.numeric(wealth),
           quintile = as.factor(quintile),
           quint = as.factor(quint))


#### Join 'BR' with 'HR' and 'WI' ####

Colombia <- births %>%
    left_join(household, by = c("cluster" = "HV001", "household" = "HV002")) %>%
    left_join(wealth_index, by = c("HHID" = "WHHID"))

Colombia <- Colombia %>% 
    select(
        CASEID, deadu5, agechild, wealth, quint, quintile, 
        unskilled, male, birth, agemoth, rural, region, reg,
        ed, ped, mocc, pocc, sourcedrinkingwater, toilettype,
        householdmembers , stunting, childweight, childheight,
        cluster,household, subregion, weight
    )

#Completeness check
# Colombia %>%
#     summarise(across(everything(), ~ mean(!is.na(.x)) * 100)) %>%
#     pivot_longer(cols = everything(),
#                  names_to = "column",
#                  values_to = "completion_rate") %>%
#   arrange(desc(completion_rate)) %>%
#   View() 

rm(list=setdiff(ls(), "Colombia"))

#### Traditional approach ####

# DHS weights must be divided by 1M
Colombia$weight <- Colombia$weight / 1000000

# Use 'stunting' as the dependent variable as it occurs more than 'deadu5'

##### Compute concentration index #####

library(rineq)

# Weighted fractional rank of wealth.
# Computed on the FULL dataset (before the decomp-specific na.omit below) so
# that ranks reflect the true population distribution, consistent with how the
# concentration index is defined.
Colombia$R <- rineq::rank_wt(Colombia$wealth, Colombia$weight)

# Concentration index for stunting (relative, i.e. standard CI)
ci_col <- rineq::ci(
  ineqvar    = Colombia$wealth,
  outcome    = Colombia$stunting,
  weights    = Colombia$weight,
  type       = "CI",           # relative concentration index
  method     = "linreg_delta",
  df_correction = TRUE,        # use population variance (derived from sample)
  robust_se  = FALSE
)

print(ci_col)

##### Baseline WDW decomposition #####

library(survey)

# WDW decomposition requires complete cases on all model variables.
# 'R' (rank) was computed on the full dataset above, so it is included here
# as a carry-along column rather than recomputed after subsetting.
decomp_vars <- c("stunting", "quint", "unskilled", "male", "birth", "agemoth",
                 "rural", "ed", "ped", "mocc", "pocc", "region", "reg", "wealth",
                 "cluster", "subregion", "weight", "R")

Colombia_decomp     <- Colombia[, decomp_vars]
Colombia_decomp     <- na.omit(Colombia_decomp)
rownames(Colombia_decomp) <- NULL

# Survey design on the complete-case subset.
# 'household' is omitted from id= to avoid single-PSU-per-stratum errors
# (confirmed below: every household belongs to exactly one cluster).
Colombia_decomp_svy <- svydesign(
  id      = ~cluster,
  strata  = ~subregion,
  weights = ~weight,
  data    = Colombia_decomp,
  nest    = TRUE    # cluster IDs are nested within strata
)

# Verify that each household is contained in a single cluster
Colombia %>%
  group_by(household) %>%
  summarise(n_clusters = n_distinct(cluster), .groups = "drop") %>%
  filter(n_clusters > 1)   # should return 0 rows

# Survey-weighted logistic GLM
m_col <- svyglm(
  formula = as.numeric(stunting) ~ quint + unskilled + male +
              birth + agemoth + rural + ed + ped + mocc + pocc + region,
  design  = Colombia_decomp_svy,
  family  = quasibinomial,   # logistic regression with robust SEs
  data    = Colombia_decomp
)

# WDW decomposition: contribution of each covariate to the CI
c_col <- rineq::contribution(
  m_col,
  Colombia_decomp$wealth,
  correction = TRUE,
  type       = "CI",
  intercept  = "exclude"
)

print(summary(c_col))

# Arrange decomposition results for plotting
df_col <- as.data.frame(summary(c_col))
df_col$Variable <- rownames(df_col)
df_col <- subset(df_col, Variable != "residual")
df_col <- df_col[order(df_col$`Contribution (%)`), ]
df_col$Variable <- factor(df_col$Variable, levels = df_col$Variable)


ggplot(df_col, aes(x = `Contribution (%)`, y = Variable)) +
  geom_col(fill = "steelblue") +
  geom_vline(xintercept = 0, colour = "black", linewidth = 0.5) +
  labs(
    title = "WDW Decomposition of Contributions – Colombia",
    x     = "Contribution (%)",
    y     = "Variable"
  ) +
  theme_minimal(base_size = 14) +
  theme(panel.grid.major.y = element_blank())

#### Rpart udf CI approach ####

source("rpart_ci.R")
library(rpart); library(rpart.plot); library(rineq); library(dplyr)

# Convert rural (and any other binary/categorical predictors) to factor
# on the FULL dataset BEFORE the train/test split. 
Colombia_decomp <- Colombia_decomp %>%
  mutate(rural = factor(rural))

set.seed(42)
train_idx      <- sample(seq_len(nrow(Colombia_decomp)),
                         size = floor(0.8 * nrow(Colombia_decomp)))
Colombia_train <- Colombia_decomp[ train_idx, ]
Colombia_test  <- Colombia_decomp[-train_idx, ]

##### Unpruned #####

# options(rpart_ci_debug = TRUE)
# Fit the CI-based tree on the training set
tree_col <- rpart_ci(
  formula   = cbind(wealth, stunting) ~ ed + rural + agemoth +
    birth + mocc + reg,
  data      = Colombia_train,
  weights   = Colombia_train$weight
)
# options(rpart_ci_debug = FALSE)

# Plot
suppressWarnings(
  rpart.plot(tree_col, type = 4, extra = 0, roundint = FALSE,
             main = "CI-based tree — Colombia stunting")
)

##### Pruned #####

# inspect tree_col$cptable first, then choose cp.
print(tree_col$cptable)


# low cp is more parsimonious, higher cp may overfit
tree_col_pruned <- prune(tree_col, cp = 0.02)

# Plot
suppressWarnings(
  rpart.plot(tree_col_pruned, type = 4, extra = 0, roundint = FALSE,
             main = "CI-based pruned tree — Colombia stunting")
)

tree_col_pruned$variable.importance

##### Leaf diagnostics #####

###### Train ######

# CI per leaf on train set (abs(CI) in leaves should be lower than on test set)
ci_by_leaf(tree_col_pruned,
           data       = Colombia_train,
           wealth_var = "wealth",
           health_var = "stunting",
           weight_var = "weight")

inf <- ci_leaf_inference(tree_col_pruned, 
                         data = Colombia_train,
                         wealth_var = "wealth",
                         health_var = "stunting",
                         weight_var = "weight")

plot_ci_leaf_inference(inf, color_by_n = FALSE)

# Tag every training observation with its leaf
Colombia_train <- add_leaf_col(tree_col_pruned, Colombia_train)

# Count per leaf
Colombia_train %>%
  group_by(leaf_id) %>%
  summarise(
    n           = n(),
    n_stunted   = sum(stunting),
    pct_stunted = mean(stunting),
    .groups     = "drop"
  ) %>%
  arrange(leaf_id)

# Show the frame to identify node IDs and their stored yval2
tree_col_pruned$frame[tree_col_pruned$frame$var == "<leaf>", ]


###### Test ######

# CI per leaf on held-out test set
ci_by_leaf(tree_col_pruned,
           data       = Colombia_test,
           wealth_var = "wealth",
           health_var = "stunting",
           weight_var = "weight")

inf <- ci_leaf_inference(tree_col_pruned, 
                         data = Colombia_test,
                         wealth_var = "wealth",
                         health_var = "stunting",
                         weight_var = "weight")

plot_ci_leaf_inference(inf, color_by_n = FALSE)

# Tag every training observation with its leaf
Colombia_test <- add_leaf_col(tree_col_pruned, Colombia_test)

# Count per leaf
Colombia_test %>%
  group_by(leaf_id) %>%
  summarise(
    n           = n(),
    n_stunted   = sum(stunting),
    pct_stunted = mean(stunting),
    .groups     = "drop"
  ) %>%
  arrange(leaf_id)


