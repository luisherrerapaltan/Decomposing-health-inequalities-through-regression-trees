library(tidyverse)
library(openxlsx)
library(tableone)

#### Import Datasets ####

# remove(list=ls())	# remove any existing list or vector
library(foreign)	# necessary to import the Stata file

all <- readRDS("data/drc/RDC_DHS_2007.rds")

# to have children <5 only (same as taking the file "Children's Recode") 
all$agech<-all$v008-all$b3	
all<-subset(all, agech<60)


#### Rename Variables ####

library(reshape)

# Respondent's basic data
all <- rename(all,c(v000="countrycode"))		# e.g. CD5 = Congo Democratic Republic
all <- rename(all,c(v001="cluster"))		# sample point
all <- rename(all,c(v002="household"))		# household number
all <- rename(all,c(v003="mother"))			# number in the household
all <- rename(all,c(v005="weight"))			# sample weight + 6 decimals
all <- rename(all,c(v007="studyyear"))		# year of interviw
all <- rename(all,c(v008="dateinterview"))	# date of interview (century month code)
# used to calculate intervals between events. CMC = (Year?1900)*12 + Month 
all <- rename(all,c(v011="datebirthmother"))	# date of birth (CMC)
all <- rename(all,c(v021="PSU"))			# primary sampling unit (~cluster)
all <- rename(all,c(v101="region"))			# region of residence
all <- rename(all,c(v102="typeresidence"))	# type of place of residence (urban/rural)	
all <- rename(all,c(v130="religion"))		# country-specific
all <- rename(all,c(v131="ethnicity"))		# country-specific
all <- rename(all,c(v133="educyears"))		# education in single years
all <- rename(all,c(v134="placeresidence"))	# large cities/small cities/towns/countryside
all <- rename(all,c(v149="educlevel"))		# educational achievement
all <- rename(all,c(v190="quintile"))		# wealth quintiles
all <- rename(all,c(v191="wealth"))			# wealth index factor score + 5 decimals

# Reproduction: each respondent's child (up to 20) ordered in reverse order such as the 
# last birth is given first 
all <- rename(all,c(b3="datebirthchild"))		# date of birth (CMC)
all <- rename(all,c(b4="sex"))			# sex
all <- rename(all,c(b5="alive"))			# child alive or not at the time of interview
all <- rename(all,c(b7="agedeath"))			# age at death of the child in completed months
all <- rename(all,c(b11="birthinterval"))		# preceding birth interval (except first birth)

# Maternity: relate to births in the three/five years preceding interview
all <- rename(all,c(m2a="ancdoctor"))		# prenatal care (anc) by a doctor
all <- rename(all,c(m2b="ancnurse"))		# prenatal care by a nurse or midwife
all <- rename(all,c(m3a="doctor"))			# delivery assisted with a doctor
all <- rename(all,c(m3b="nurse"))			# delivery assisted with a nurse or midwife
all <- rename(all,c(m5="breastfeeding"))		# duration of breastfeeding in months
all <- rename(all,c(m14="ancvisits"))		# number of anc visits during pregnancy
all <- rename(all,c(m19="birthweight"))		# weight of child at birth in kg + 3 decimals 
all <- rename(all,c(h9="measles"))			# received measles vaccination
all <- rename(all,c(hw3="height"))			# height in cm + 1 decimal
all <- rename(all,c(hw70="zscore"))			# height-for-age standard deviation (WHO) 
# + 2 decimals

# Other health issues
all <- rename(all,c(v481="insurance"))		# covered by health insurance

# Marriage of the respondent
all <- rename(all,c(v501="maritalstatus"))	# current marital status 
all <- rename(all,c(v502="marriedcurrent"))	# currently, formerly, or never married
all <- rename(all,c(v504="livewithpartner"))	# the partner lives in the household 

# Partner's characteristics (ever-married women) and woman's work
all <- rename(all,c(v704="pemployed"))		# current/last partner's most recent occupation
all <- rename(all,c(v705="poccup"))			# standardised partner's occupation groups
all <- rename(all,c(v715="peducyears"))		# most recent partner's education in years
all <- rename(all,c(v717="moccup"))			# standardised respondent's occupation groups
# women who are currently working or who have worked in the last 12 months
all <- rename(all,c(v729="peduclevel"))		# educational achievement of the partner
all <- rename(all,c(v731="employed"))		# the respondent worked in the last 12 months


#### Define Variables ####

# define variables' categories and calculate indicators
# "a,b,c,d..." are added before some categories to order it and specify the reference for 
# the regression analysis 

# sampling weights must be divided by 1000000 (6 decimals) 
all$weight<-all$weight/1000000 

# Wealth and quintiles
# wealth must be divided by 100000 (5 decimals) 
all$wealth<-all$wealth/100000 
all$quint<-NULL
all$quint[all$quintile==1]<-"b low"
all$quint[all$quintile==2]<-"b low"
all$quint[all$quintile==3]<-"a high"
all$quint[all$quintile==4]<-"a high"
all$quint[all$quintile==5]<-"a high"

# Country, regions and type of residence
all$country<-as.factor(all$countrycode)
all$countryc<-as.numeric(all$country)
all$country<-NULL
all$country[all$countryc==1]<-"DRCongo"

all$country<-as.factor(all$country)
all$region[all$country=="DRCongo"&all$region==10]<-1
all$region[all$country=="DRCongo"&all$region==20]<-2
all$region[all$country=="DRCongo"&all$region==30]<-3
all$region[all$country=="DRCongo"&all$region==40]<-4
all$region[all$country=="DRCongo"&all$region==50]<-5
all$region[all$country=="DRCongo"&all$region==61]<-6
all$region[all$country=="DRCongo"&all$region==62]<-7
all$region[all$country=="DRCongo"&all$region==63]<-8
all$region[all$country=="DRCongo"&all$region==70]<-9
all$region[all$country=="DRCongo"&all$region==80]<-10
all$region[all$country=="DRCongo"&all$region==90]<-11

all$rural<-NULL
all$rural[all$typeresidence==1]<-0
all$rural[all$typeresidence==2]<-1

all$region<-as.numeric(all$region)
all$reg<-NULL
all$reg[all$country=="DRCongo"&all$region==1]<-"Kinshasa"
all$reg[all$country=="DRCongo"&all$region==2]<-"Bas-Congo"
all$reg[all$country=="DRCongo"&all$region==3]<-"Bandundu"
all$reg[all$country=="DRCongo"&all$region==4]<-"Equateur"
all$reg[all$country=="DRCongo"&all$region==5]<-"Orientale"
all$reg[all$country=="DRCongo"&all$region==6]<-"Nord-Kivu"
all$reg[all$country=="DRCongo"&all$region==7]<-"Maniema"
all$reg[all$country=="DRCongo"&all$region==8]<-"Sud-Kivu"
all$reg[all$country=="DRCongo"&all$region==9]<-"Katanga"
all$reg[all$country=="DRCongo"&all$region==10]<-"Kasai Oriental"
all$reg[all$country=="DRCongo"&all$region==11]<-"Kasai Occidental"

# Parent's education and occupation
all$educlev<-NULL
all$educlev[all$educlevel==0]<- "f no education"
all$educlev[all$educlevel==1]<- "e inc.primary"
all$educlev[all$educlevel==2]<- "d primary"
all$educlev[all$educlevel==3]<- "c inc.secondary"
all$educlev[all$educlevel==4]<- "b secondary"
all$educlev[all$educlevel==5]<- "a higher"
all$educlev[all$educlevel==8]<- NA
all$educlev[all$educlevel==9]<- NA
all$ed<-NULL
all$ed[all$educlevel==0]<- "b no education"
all$ed[all$educlevel==1]<- "b no education"
all$ed[all$educlevel==2]<- "a education"
all$ed[all$educlevel==3]<- "a education"
all$ed[all$educlevel==4]<- "a education"
all$ed[all$educlevel==5]<- "a education"
all$ed[all$educlevel==8]<- NA
all$ed[all$educlevel==9]<- NA
all$peduclev<-NULL
all$peduclev[all$peduclevel==0]<- "f no education"
all$peduclev[all$peduclevel==1]<- "e inc.primary"
all$peduclev[all$peduclevel==2]<- "d primary"
all$peduclev[all$peduclevel==3]<- "c inc.secondary"
all$peduclev[all$peduclevel==4]<- "b secondary"
all$peduclev[all$peduclevel==5]<- "a higher"
all$peduclev[all$peduclevel==8]<- NA
all$peduclev[all$peduclevel==9]<- NA
all$ped<-NULL
all$ped[all$peduclevel==0]<- "b no education"
all$ped[all$peduclevel==1]<- "b no education"
all$ped[all$peduclevel==2]<- "a education"
all$ped[all$peduclevel==3]<- "a education"
all$ped[all$peduclevel==4]<- "a education"
all$ped[all$peduclevel==5]<- "a education"
all$ped[all$peduclevel==8]<- NA
all$ped[all$peduclevel==9]<- NA
all$educyears[all$educyears>90]<-NA
all$peducyears[all$peducyears>90]<-NA
all$moccup[all$employed==0]<-0
all$mocc<-NULL
all$mocc[all$moccup==0]<-"c Household, unskilled manual, not working"
all$mocc[all$moccup==1]<-"a other"
all$mocc[all$moccup==2]<-"a other"
all$mocc[all$moccup==3]<-"a other"
all$mocc[all$moccup==4|all$moccup==5|all$moccup==10]<-"d Agriculture"
all$mocc[all$moccup==6]<-"c Household, unskilled manual, not working"
all$mocc[all$moccup==7]<-"a other"
all$mocc[all$moccup==8]<-"a other"
all$mocc[all$moccup==9]<-"c Household, unskilled manual, not working"
all$mocc[all$moccup==96]<-"a other"
all$mocc[all$moccup==97]<-"c Household, unskilled manual, not working"
all$mocc[all$moccup>=98]<-NA
all$poccup[all$pemployed==0]<-0
all$pocc<-NULL
all$pocc[all$poccup==0]<-"c Household, unskilled manual, not working"
all$pocc[all$poccup==1]<-"a other"
all$pocc[all$poccup==2]<-"a other"
all$pocc[all$poccup==3]<-"a other"
all$pocc[all$poccup==4|all$poccup==5|all$poccup==10]<-"d Agriculture"
all$pocc[all$poccup==6]<-"c Household, unskilled manual, not working"
all$pocc[all$poccup==7]<-"a other"
all$pocc[all$poccup==8]<-"a other"
all$pocc[all$poccup==9]<-"c Household, unskilled manual, not working"
all$pocc[all$poccup==96]<-"a other"
all$pocc[all$poccup==97]<-"c Household, unskilled manual, not working"
all$pocc[all$poccup>=98]<-NA

# mother's age and marital status
all$agemother<-NULL
all$agemother<-(all$datebirthchild-all$datebirthmother)/15
all$agemother<-as.integer(all$agemother)
all$agemoth<-NULL
all$agemoth[all$agemother<20]<-"less than 20"
all$agemoth[all$agemother>=20]<-"a20 or more"
all$agemoth<-as.factor(all$agemoth)
all$maritalstatus[all$maritalstatus==0]<-"never married"
all$maritalstatus[all$maritalstatus==1]<-"married"
all$maritalstatus[all$maritalstatus==2]<-"living together"
all$maritalstatus[all$maritalstatus==3]<-"widowed"
all$maritalstatus[all$maritalstatus==4]<-"divorced"
all$maritalstatus[all$maritalstatus==5]<-"not living together"
all$maritalstatus[all$maritalstatus==9]<-NA
all$married<-NULL
all$married[all$marriedcurrent==1]<-1
all$married[all$marriedcurrent==0]<-0
all$married[all$marriedcurrent==9]<-NA

# Child characteristics
all$male<-NULL
all$male[all$sex==1]<-1
all$male[all$sex==2]<-0
all$birthw<-NULL
all$birthw[all$birthweight>=9000]<-NA
all$lowbirthw<-NULL
all$lowbirthw[all$birthw<2500]<-1
all$lowbirthw[all$birthw>=2500]<-0
all$agechild<-NULL
all$agechild<-all$dateinterview - all$datebirthchild
all$birth<-NULL
all$birth[all$bord==1]<-"a first"
all$birth[(all$bord==2|all$bord==3|all$bord==4)&all$birthinterval<24]<-"b 2-4 short"
all$birth[(all$bord==2|all$bord==3|all$bord==4)&all$birthinterval>=24]<-"c 2-4 long"
all$birth[all$bord>4&all$birthinterval<24]<-"d 5+ short"
all$birth[all$bord>4&all$birthinterval>=24]<-"e 5+ long"
all$deadu5<-NULL
all$deadu5[all$alive==0 &all$agedeath<60]<-1
all$deadu5[all$alive==1]<-0
all$deadu1<-NULL
all$deadu1[all$alive==0 &all$agedeath<12]<-1
all$deadu1[all$alive==1|all$agedeath>=12]<-0
all$zscore<-all$zscore/100		# zscore must be divided by 100 (2 decimals) 
all$vmeasles<-NULL
all$vmeasles[all$measles==0]<-0
all$vmeasles[all$measles==1|all$measles==2 | all$measles==3]<-1

# Birth characteristics
all$anc<-NULL
all$anc[(all$ancdoctor==0&all$ancnurse==0)]<-"b no or few skilled anc"
all$anc[(all$ancvisits>=1&all$ancvisits<4)&	
          (all$ancdoctor==1|all$ancnurse==1)]<-"b no or few skilled anc"
all$anc[(all$ancvisits>=4&all$ancvisits<98)&
          (all$ancdoctor==1|all$ancnurse==1)]<-"a 4+ skilled anc"
all$unskilled<-NULL
all$unskilled[all$doctor==0&all$nurse==0]<-1
all$unskilled[all$doctor==1|all$nurse==1]<-0
all$skilled<-NULL
all$skilled[all$doctor==0&all$nurse==0]<-0
all$skilled[all$doctor==1|all$nurse==1]<-1
all$breastfed<-NULL
all$breastfed[all$breastfeeding<=6]<- "<=6 months"
all$breastfed[all$breastfeeding>6&all$breastfeeding<93]<- ">6 months"
all$breastfed[all$breastfeeding==94]<-"never breastfed"
all$breastfed[all$breastfeeding>=95]<-NA
all$breast<-NULL
all$breast[all$breastfeeding<=93]<- 1
all$breast[all$breastfeeding==94]<-0
all$breast[all$breastfeeding>=95]<-NA

#### Set variable types ####

all$caseid<-as.factor(all$caseid)
all$countryc<-as.factor(all$countryc)
all$cluster<-as.integer(all$cluster)
all$household<-as.integer(all$household)
all$mother<-as.integer(all$mother) 
all$studyyear<-as.factor(all$studyyear)
all$PSU<-as.integer(all$PSU)
all$quint<-as.factor(all$quint)
all$quintile<-as.factor(all$quintile)
all$educyears<-as.integer(all$educyears)
all$agedeath<-as.integer(all$agedeath)
all$male<-as.logical(all$male)
all$ed<-as.factor(all$ed)
all$ped<-as.factor(all$ped)
all$wealth<-as.numeric(all$wealth)
all$region<-as.factor(all$region)
all$reg<-as.factor(all$reg)
all$rural<-as.logical(all$rural)
all$mocc<-as.factor(all$mocc)
all$pocc<-as.factor(all$pocc)
all$anc<-as.factor(all$anc)
all$birth<-as.factor(all$birth)
all$deadu5<-as.logical(all$deadu5)
all$maritalstatus<-as.factor(all$maritalstatus)
all$employed<-as.factor(all$employed)
all$moccup<-as.factor(all$moccup)
all$vmeasles<-as.logical(all$vmeasles)
all$unskilled<-as.logical(all$unskilled)
all$skilled<-as.logical(all$skilled)
all$breastfed<-as.factor(all$breastfed)
all$agechild<-as.integer(all$agechild)


#### Select relevant variables ####

# subset of children with no NA for deadu5
all<-subset(all, deadu5==T |deadu5==F)

DRCongo<-all[,c("caseid","deadu5","agechild", "wealth","quint", "quintile","unskilled", 
                "male", "birth","agemoth", "rural", "region","reg", "ed","ped", "mocc", "pocc", "PSU", 
                "household","country","weight")]


DRCongo <- na.omit(DRCongo)

rm(list=setdiff(ls(), "DRCongo"))

#### Traditional approach ####

##### Compute concentration index #####

library(rineq)

# Weighted fractional rank of wealth.
# NOTE: na.omit() was already applied during data preparation, so DRCongo is
# already a complete-case dataset. 
DRCongo$R <- rineq::rank_wt(DRCongo$wealth, DRCongo$weight)

# Concentration index for deadu5 (relative, i.e. standard CI)
ci_drc <- rineq::ci(
  ineqvar       = DRCongo$wealth,
  outcome       = DRCongo$deadu5,
  weights       = DRCongo$weight,
  type          = "CI",           # relative concentration index
  method        = "linreg_delta", # Linear reg, no LHS transformation,
                                  # SE take into account sampling variability
                                  # of the estimate of the mean
  df_correction = TRUE,           # use population variance (derived from sample)
  robust_se     = FALSE
)

print(ci_drc)

##### Baseline WDW decomposition #####

library(survey)

# DRCongo is already complete-case; no further subsetting needed.
decomp_vars <- c("deadu5", "quint", "unskilled", "male", "birth", "agemoth",
                 "rural", "ed", "ped", "mocc", "pocc", "region", "reg", "wealth",
                 "PSU", "household", "weight", "R")

DRCongo_decomp <- DRCongo[, decomp_vars]
rownames(DRCongo_decomp) <- NULL

# Survey design.
# DRC DHS 2007 does not have a sub-region strata variable; PSU is used as the
# primary cluster ID. Household is added as a second-stage ID.
# No strata argument is specified to avoid single-PSU-per-stratum errors.
DRCongo_decomp_svy <- svydesign(
  id      = ~PSU + household,
  weights = ~weight,
  data    = DRCongo_decomp
)

# Survey-weighted logistic GLM
m_drc <- svyglm(
  formula = as.numeric(deadu5) ~ quint + unskilled + male +
              birth + agemoth + rural + ed + ped + mocc + pocc + region,
  design  = DRCongo_decomp_svy,
  family  = quasibinomial,   # logistic regression with robust SEs
  data    = DRCongo_decomp
)

# Coefficient table (replicates Table 2 in published paper)
summary(m_drc)$coef

# WDW decomposition: contribution of each covariate to the CI
# (replicates Table 3 in published paper)
c_drc <- rineq::contribution(
  object = m_drc,
  ranker = DRCongo_decomp$wealth,
  correction = TRUE,  # global and partial confidence should be corrrected
                      # for negative values using imputation
  type       = "CI",
  intercept  = "exclude"
)

print(summary(c_drc))

# Arrange decomposition results for plotting

df_drc <- as.data.frame(summary(c_drc))
df_drc$Variable <- rownames(df_drc)
df_drc <- subset(df_drc, Variable != "residual")
df_drc <- df_drc[order(df_drc$`Contribution (%)`), ]
df_drc$Variable <- factor(df_drc$Variable, levels = df_drc$Variable)

ggplot(df_drc, aes(x = `Contribution (%)`, y = Variable)) +
  geom_col(fill = "steelblue") +
  geom_vline(xintercept = 0, colour = "black", linewidth = 0.5) +
  labs(
    title = "WDW Decomposition of Contributions – DRC",
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
DRCongo <- DRCongo %>%
  mutate(rural = factor(rural))

set.seed(42)
train_idx <- sample(seq_len(nrow(DRCongo)),
                    size = floor(0.8 * nrow(DRCongo)))
DRC_train <- DRCongo[ train_idx, ]
DRC_test  <- DRCongo[-train_idx, ]


##### Unpruned #####
# options(rpart_ci_debug = TRUE)

# Fit the CI-based tree on the training set
tree_drc <- rpart_ci(
  formula   = cbind(wealth, deadu5) ~ ed + rural + agemoth + birth + mocc + reg,
  data      = DRC_train,
  weights   = DRC_train$weight
)

# options(rpart_ci_debug = FALSE)

# Plot
suppressWarnings(
  rpart.plot(tree_drc, type = 4, extra = 0, roundint = FALSE,
             main = "CI-based tree — DRC under-5 mortality")
)

##### Pruned #####

# inspect tree_col$cptable first, then choose cp.
print(tree_drc$cptable)

# low cp is more parsimonious, higher cp may overfit
tree_drc_pruned <- prune(tree_drc, cp = 0.02)

# Plot
suppressWarnings(
  rpart.plot(tree_drc_pruned, type = 4, extra = 0, roundint = FALSE,
             main = "CI-based pruned tree — DRC under-5 mortality")
)

tree_drc_pruned$variable.importance

##### Leaf diagnostics #####

###### Train ######

# CI per leaf on train set (abs(CI) in leaves should be lower than on test set)
ci_by_leaf(tree_drc_pruned,
           data       = DRC_train,
           wealth_var = "wealth",
           health_var = "deadu5",
           weight_var = "weight")

inf <- ci_leaf_inference(tree_drc_pruned, 
                         data = DRC_train,
                         wealth_var = "wealth",
                         health_var = "deadu5",
                         weight_var = "weight")

plot_ci_leaf_inference(inf, color_by_n = FALSE)

# Tag every training observation with its leaf
DRC_train <- add_leaf_col(tree_drc_pruned, DRC_train)

# Count per leaf
DRC_train %>%
  group_by(leaf_id) %>%
  summarise(
    n           = n(),
    n_deadu5   = sum(deadu5),
    pct_deadu5 = mean(deadu5),
    .groups     = "drop"
  ) %>%
  arrange(leaf_id)

# Show the frame to identify node IDs and their stored yval2
tree_drc_pruned$frame[tree_drc_pruned$frame$var == "<leaf>", ]

###### Test ######

# CI per leaf on held-out test set
ci_by_leaf(tree_drc_pruned,
           data       = DRC_test,
           wealth_var = "wealth",
           health_var = "deadu5",
           weight_var = "weight")

inf <- ci_leaf_inference(tree_drc_pruned, 
                         data = DRC_test,
                         wealth_var = "wealth",
                         health_var = "deadu5",
                         weight_var = "weight")

plot_ci_leaf_inference(inf, color_by_n = FALSE)

# Tag every training observation with its leaf
DRC_test <- add_leaf_col(tree_drc_pruned, DRC_test)

# Count per leaf
DRC_test %>%
  group_by(leaf_id) %>%
  summarise(
    n           = n(),
    n_deadu5   = sum(deadu5),
    pct_deadu5 = mean(deadu5),
    .groups     = "drop"
  ) %>%
  arrange(leaf_id)

