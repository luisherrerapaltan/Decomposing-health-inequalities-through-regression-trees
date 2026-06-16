# Decomposing Health Inequalities through Regression Trees

Master's thesis — Master of Statistics and Data Science, Hasselt University / UCLouvain

## 

## Overview

This repository contains the R code for a thesis that develops and evaluates a CART-based, concentration-index (CI) driven subgroup discovery method as a complement to the Wagstaff–van Doorslaer–Watanabe (WDW) linear decomposition of health inequality. The core contribution is a custom `rpart` user-defined method that substitutes the standard Gini impurity with the weighted absolute concentration index as the node-splitting criterion, allowing socioeconomic health inequality to drive tree structure rather than outcome variance.

The method is validated through simulations and applied to two DHS datasets: the Democratic Republic of Congo (DHS 2007) for under-5 mortality and Colombia (DHS 2000) for child stunting.



## Repository Structure

|File|Description|
|-|-|
|`rpart\_ci.R`|Core user-defined function. Implements the CI-based splitting criterion for `rpart` via the `init`, `eval`, and `split` hooks. Also contains `ci\_by\_leaf()`, `ci\_leaf\_inference()`, and `plot\_ci\_leaf\_inference()` for per-leaf CI estimation and plotting. **Start here.**|
|`simulations.R`|Generates three synthetic datasets with controlled DGPs: Scenario A (additive), B (interactions), C (pure segmentation).|
|`simulations\_models.R`|Fits the WDW decomposition and the CI tree for each simulation scenario. Includes CP tuning via repeated train/test evaluation on Scenario C.|
|`drc.R`|Full analysis pipeline for the DRC DHS 2007 dataset: data preparation, WDW decomposition, and CI tree.|
|`col.R`|Full analysis pipeline for the Colombia DHS 2000 dataset: data preparation, WDW decomposition, and CI tree.|
|`col\_eda.R`|Exploratory data analysis for the Colombia dataset.|
|`RDC\_analysis\_v3\_Hasselt.Rmd`|R Markdown notebook with the traditional WDW decomposition approach for the DRC, used as a benchmark.|

\---

## Data

DHS microdata are not included in this repository due to the DHS Program's data use agreement, which prohibits redistribution. Data can be requested free of charge at [dhsprogram.com](https://dhsprogram.com/data/available-datasets.cfm).

The scripts expect the following files relative to the project root:

```
data/
  colombia/
    COBR41SD/COBR41FL.SAS7BDAT   # Colombia Births Recode
    COHR41SD/COHR41FL.SAS7BDAT   # Colombia Household Recode
    COWI41SD/COWI41FL.SAS7BDAT   # Colombia Wealth Index
  drc/
    RDC\_DHS\_2007.rds              # DRC dataset (pre-processed)
```

\---

## Getting Started

1. Clone the repository and open `Decomposing health inequalities through regression trees.Rproj` in RStudio. This sets the working directory to the project root, which all relative paths depend on.
2. Install the required packages:

```r
install.packages(c("rpart", "rpart.plot", "rineq", "survey", "dplyr",
                   "ggplot2", "haven", "tidyr"))
```

3. Source the core function before running any analysis script:

```r
source("rpart\_ci.R")
```

4. Run scripts in this order for a full reproduction:

   * `simulations.R` → `simulations\_models.R`
   * `drc.R`
   * `col.R` -> `col\\\_eda.R` (optional)

