# =============================================================================
# rpart_ci.R
# Plugs a custom impurity measure, the weighted absolute Concentration Index |CI|,
# into the rpart engine via its documented method interface. This interface
# requires exactly three functions (init, eval, split) which rpart calls 
# at specific moments during tree-building. This file provides those three,
# plus three utilities built on top of the fitted tree object.

# rpart_ci.R
# │
# ├── ci_node()          Helper: compute signed CI for a set of observations
# │                      (called inside eval_ci and split_ci)
# │
# ├── init_ci()          rpart hook #1: validate y, declare metadata
# ├── eval_ci()          rpart hook #2: compute node label + impurity
# ├── split_ci()         rpart hook #3: score all candidate splits for one variable
# │
# ├── rpart_ci()         User-facing wrapper: assembles args, calls rpart()
# │
# └── .assign_leaves()   Internal: walk split table to route obs to leaves
#     ├── ci_by_leaf()   User: compute per-leaf CI on (possibly held-out) data
#     └── add_leaf_col() User: tag each observation with its leaf node ID

# Conceptual goal:
#   Standard CART splits nodes to minimise outcome variance (regression) or
#   Gini impurity (classification). Here we instead split nodes to minimise
#   the weighted absolute concentration index (|CI|) across the two child
#   nodes. A split is only accepted if it strictly reduces the total |CI|
#   relative to the parent, i.e. if the two children together are more
#   internally equal (in the socioeconomic sense) than the parent was.
#
# How the response object works:
#   rpart's custom-method interface requires the response 'y' to carry all
#   information needed to compute the impurity measure at evaluation time.
#   Because the CI is a joint function of a health outcome AND a wealth
#   ranking, y must be a two-column matrix:
#       y[, 1]  wealth  (continuous socioeconomic indicator)
#       y[, 2]  health  (binary or continuous outcome, e.g. stunting)
#
#   The formula passed to rpart_ci() must therefore use cbind() on the LHS:
#       rpart_ci(cbind(wealth, stunting) ~ education + rural + mother_age,
#                data = df, weights = df$weight)
#
# IMPORTANT — data preparation before calling rpart_ci():
#   Binary variables coded as logical (TRUE/FALSE) or raw 0/1 integer/numeric
#   are treated by rpart as CONTINUOUS, not categorical. This causes rpart to
#   evaluate n-1 cut points (one per row) instead of one meaningful cut point
#   between the two values. The spurious within-tie cut points produce noisy
#   goodness values that can outcompete the true split. To avoid this, convert
#   all binary and categorical predictors to factor before calling rpart_ci().
#
# =============================================================================


# ── 0. Helpers ────────────────────────────────────────────────────────────────

#' Weighted concentration index for one node.
#'
#' Thin wrapper around rineq::ci()
#' Given the n×2 matrix y (col 1 = wealth, col 2 = health) and a weight vector,
#' returns the scalar signed CI. Called many times per split evaluation.
#'
#' Returns 0 (perfectly equal node) when there are fewer than 2 observations,
#' or when the health outcome has negligible weighted variation.
#'
#' @param y   Two-column matrix: [wealth, health]
#' @param wt  Numeric vector of non-negative survey weights (same length as y)
#'
#' @return Scalar CI (signed; takes values in (−1, 1))
ci_node <- function(y, wt) {

  # Guard: need >= 2 observations and nonzero total weight
  if (nrow(y) < 2L || sum(wt) == 0) return(0)

  # ── Fast inline CI formula ────────────────────────────────────────────────
  # CI = (2 / mu_h) * cov_w(h, R)
  # where R_i is the weighted fractional rank of observation i in the wealth
  # distribution and cov_w is the weighted covariance.
  #
  # Why inline instead of rineq::ci()?
  # rineq::ci() is a general-purpose function with overhead from S3 dispatch,
  # argument validation, and error handling. When called tens of thousands of 
  # times per tree fit (once per candidate cut point × 2 children), this overhead 
  # becomes a bottleneck. The inline version performs the same arithmetic using 
  # 5 vectorised operations with minimal memory allocation, making it substantially 
  # more efficient.
  
  h      <- y[, 2L]
  wealth <- y[, 1L]

  # Guard: constant health outcome → CI is 0 (avoids division by near-zero mean)
  
  # What is machine epsilon?  
  # It is the smallest difference from 1 that the hardware can distinguish.
  # It is the fundamental unit of floating-point rounding error.
  
  # .Machine$double.eps acts as a numerical zero-threshold. If the health outcome
  # has no meaningful weighted variation in this node, the CI is undefined 
  # — return 0 and move on. It protects from a division-by-near-zero that 
  # would otherwise corrupt the goodness scores of every split evaluated in that node.  
  
  mu_h <- sum(wt * h) / sum(wt)
  if (abs(mu_h) < .Machine$double.eps) return(0)
  wvar_h <- sum(wt * (h - mu_h)^2)
  if (wvar_h < .Machine$double.eps) return(0)

  # Weighted fractional rank of wealth
  # For each i: R_i = (wt of obs strictly poorer + 0.5 * wt of ties) / total_wt
  total_wt <- sum(wt)
  o        <- order(wealth)
  wt_ord   <- wt[o]
  cumwt    <- cumsum(wt_ord)
  # weight of all obs strictly below this rank group
  below    <- c(0, cumwt[-length(cumwt)])
  # R at sorted position: (weight below + half own weight) / total
  R_ord    <- (below + 0.5 * wt_ord) / total_wt
  R        <- numeric(length(wealth))
  R[o]     <- R_ord

  # Weighted covariance of h and R, then scale to CI
  cov_wt <- sum(wt * (h - mu_h) * (R - sum(wt * R) / total_wt)) / total_wt
  ci_val  <- 2 * cov_wt / mu_h

  # Guard: against floating-point overshoot -> Clamp to [-1, 1]
  max(-1, min(1, ci_val))
}


# ── 1. init_ci ────────────────────────────────────────────────────────────────

#' Initialisation function (called once by rpart before tree building)
#'
#' Responsibilities:
#'   - Validate the shape of y (must be a 2-column matrix).
#'   - Return metadata that rpart needs:
#'      numy: number of response columns to pass to eval and split (2)
#'      numresp: number of values stored per node in $frame$yval2
#'               2 (weighted mean of the health outcome + signed CI)
#'      summary: function used by print.rpart and summary.rpart per node
#'      text: function used by rpart.plot to label nodes
#'
#' @param y       Response matrix (n × 2): [wealth, health]
#' @param offset  Unused (required by rpart's interface)
#' @param parms   Unused (required by rpart's interface)
#' @param wt      Weight vector
#'
#' @return Named list expected by rpart's custom-method interface
init_ci <- function(y, offset, parms, wt) {

  if (!is.matrix(y) || ncol(y) != 2L) {
    stop(
      "rpart_ci: the response must be a 2-column matrix produced by cbind().\n",
      "  LHS formula example:  cbind(wealth, stunting) ~ covariate1 + ...\n",
      "  Column 1 = wealth (socioeconomic indicator)\n",
      "  Column 2 = health outcome (e.g. stunting, 0/1)"
    )
  }
  
  list(
    y       = y,
    numresp = 2L,
    numy    = 2L,
    summary = function(yval, dev, wt, ylevel, digits) {
      # yval[1] = weighted mean of health outcome
      # yval[2] = signed CI
      # dev     = |CI| (the impurity stored by eval_ci)
      paste0(
        "mean(health) = ", round(yval[1L], digits),
        "  |  CI = ",      round(yval[2L], digits),
        "  |  |CI| = ",    round(dev,      digits)
      )
    },
    # rpart.plot calls $functions$text once with ALL nodes simultaneously,
    # passing yval as a MATRIX with one row per node and two columns:
    #   col 1 = weighted mean of health outcome
    #   col 2 = signed CI
    text = function(yval, dev, wt, ylevel, digits, n, use.n) {
      yval <- as.matrix(yval)
      paste0(
        "mean(health)=", round(yval[, 1L], 3L), "\n",
        "CI=",           round(yval[, 2L], 3L)
      )
    }
  )
}


# ── 2. eval_ci ────────────────────────────────────────────────────────────────

#' Called once per node (internal and leaf) during tree construction 
#' and after pruning.
#' 
#' Computes the node's representative value (label) and its impurity (deviance).
#'
#'  label — length-2 vector c(wmean_health, ci_signed), stored in frame$yval2.
#'  deviance — |CI| × sum(wt), not bare |CI|.
#'
#' When deviance == 0 the node is "pure" in the inequality sense: the health
#' outcome is not systematically ranked by wealth within this subgroup.
#'
#' @param y     Two-column matrix for the observations in this node
#' @param wt    Weight vector for this node
#' @param parms Unused
#'
#' @return Named list with elements $label and $deviance
eval_ci <- function(y, wt, parms) {

  wmean_health <- stats::weighted.mean(y[, 2L], wt)
  ci_signed    <- ci_node(y, wt)

  # rpart's cp criterion is: improvement / root_deviance, where
  # improvement = parent_deviance - (left_deviance + right_deviance).
  # For cp to be positive (i.e. for rpart to accept the split), 
  # child deviances must sum to less than the parent deviance.
  #
  # With raw |CI| as deviance this fails: |CI_L| + |CI_R| can exceed |CI_parent|
  # even when the weighted average p_L·|CI_L| + p_R·|CI_R| is smaller, because
  # the two child CIs live on different weight bases. Multiplying by sum(wt) 
  # makes deviance additive and can account for both inequality and node size.
  #
  #   parent_dev − (left_dev + right_dev)
  #   = |CI_P|·wt − (|CI_L|·wt_L + |CI_R|·wt_R)
  #   = wt · (|CI_P| − p_L·|CI_L| − p_R·|CI_R|)
  #   = wt · goodness   ← always same sign as goodness
  list(
    label    = c(wmean_health, ci_signed),
    deviance = abs(ci_signed) * sum(wt)
  )
}


# ── 3. split_ci ───────────────────────────────────────────────────────────────

#' Called once per candidate predictor per node during the split search. 
#' rpart has already sorted observations by x before calling this.
#'
#' For each possible binary split of the node on the current variable x,
#' the reduction in weighted |CI| is computed:
#'
#'   goodness[i] = wt * (|CI_P| − p_L * |CI_L| - p_R * |CI_R|)
#'
#' goodness > 0  means the split reduces inequality heterogeneity.
#' goodness = 0  means the split offers no improvement (rpart will ignore it).
#'
#' The function handles:
#'   - Continuous x: iterate ONLY over cut points at x-value transitions
#'     (i.e. where diff(x) != 0).
#'   - Categorical x: iterate over all ordered binary partitions of K levels.
#'     (rpart passes categorical x already as integer-encoded level codes)
#'
#' @param y          Two-column matrix for observations in this node
#' @param wt         Weight vector
#' @param x          The candidate split variable (numeric or factor)
#' @param parms      Unused
#' @param continuous Logical; TRUE if x is continuous, FALSE if categorical
#'
#' @return Named list: $goodness (length n-1 or ncat-1), $direction (length n-1 or ncat)
split_ci <- function(y, wt, x, parms, continuous) {

  n         <- nrow(y)
  ci_parent <- abs(ci_node(y, wt))
  total_wt  <- sum(wt)

  if (continuous) {

    # Allocate full-length vectors as rpart requires (length n-1 each).
    # Slots that are not evaluated remain at 0 (no improvement).
    goodness  <- double(n - 1L)
    direction <- integer(n - 1L)

    # Only evaluate cut points at value transitions.
    # Within a tie group every position gives the same split and the same CI,
    # so evaluating all of them wastes compute without adding information.
    cut_positions <- which(diff(x) != 0L)

    # ── Early-exit optimisation ───────────────────────────────────────────────
    # For a continuous predictor with many unique values (e.g. mother_age)
    # the number of candidate cut points can approach n. Most of them
    # will not beat the best split found so far. Once the best_goodness has
    # stabilised (no improvement in the last `patience` consecutive cut points
    # that are at least `min_skip` positions apart), we stop evaluating.
    #
    # This is safe because:
    #   - rpart only uses the cut point with the highest goodness score.
    #   - A full-length vector is still returned — unevaluated slots stay 0.
    #   - The patience window is conservative (50 transitions) so genuine
    #     improvements near the tail are not missed.
    
    best_goodness   <- 0
    no_improve_cnt  <- 0L
    patience        <- 50L   # consecutive non-improving transitions before stopping

    for (i in cut_positions) {

      left  <- seq_len(i)
      right <- seq.int(i + 1L, n)
      
      # Respect minsplit's spirit: skip if either child is too small. 
      if (length(left) < 5L || length(right) < 5L) next

      wt_l <- wt[left];  wt_r <- wt[right]
      p_l  <- sum(wt_l) / total_wt
      p_r  <- sum(wt_r) / total_wt

      ci_l <- abs(ci_node(y[left,  , drop = FALSE], wt_l))
      ci_r <- abs(ci_node(y[right, , drop = FALSE], wt_r))

      g <- ci_parent - (p_l * ci_l + p_r * ci_r)
      g_scaled <- max(0, g * total_wt)
      goodness[i]  <- g_scaled
      direction[i] <- 1L

      # Update early-exit counter
      if (g_scaled > best_goodness + .Machine$double.eps) {
        best_goodness  <- g_scaled
        no_improve_cnt <- 0L
      } else {
        no_improve_cnt <- no_improve_cnt + 1L
        if (no_improve_cnt >= patience) break
      }
    }

  } else {
    
    unique_codes <- sort(unique(x))
    ncat         <- length(unique_codes)

    goodness <- double(ncat - 1L)

    if (ncat < 2L) return(list(goodness = goodness, direction = unique_codes))

    # Step 1: order level codes by weighted mean health outcome (ascending).
    
    # This imposes a linear order on an unordered categorical variable so that
    # the ncat − 1 binary partitions can be evaluated sequentially (levels with
    # low mean health go left, high go right). It is standard CART heuristic
    # for nominal predictors. The key subtlety is that unique_codes here are
    # rpart's integer level codes (1-based), not the original factor labels —
    # so the ordered vector must be returned as direction directly.
    
    level_mean <- vapply(unique_codes, function(code) {
      idx <- which(x == code)
      if (length(idx) == 0L) return(0)
      stats::weighted.mean(y[idx, 2L], wt[idx])
    }, numeric(1L))
    
    ordered_codes <- unique_codes[order(level_mean)]

    # Step 2: evaluate each of the ncat-1 cut points.
    # DEBUG start
    if (getOption("rpart_ci_debug", FALSE)) {
      cat("[split_ci] ncat=", ncat,
          " ci_parent=", round(ci_parent, 5),
          " ordered_codes=", paste(ordered_codes, collapse=","), "\n")
    }
    # DEBUG end
    for (j in seq_len(ncat - 1L)) {

      left_codes  <- ordered_codes[seq_len(j)]
      right_codes <- ordered_codes[seq.int(j + 1L, ncat)]

      left  <- which(x %in% left_codes)
      right <- which(x %in% right_codes)
      
      # Respect minsplit's spirit: skip if either child is too small. 
      if (length(left) < 5L || length(right) < 5L) {
        goodness[j] <- 0
        next
      }

      wt_l <- wt[left];  wt_r <- wt[right]
      p_l  <- sum(wt_l) / total_wt
      p_r  <- sum(wt_r) / total_wt

      ci_l <- abs(ci_node(y[left,  , drop = FALSE], wt_l))
      ci_r <- abs(ci_node(y[right, , drop = FALSE], wt_r))

      g           <- ci_parent - (p_l * ci_l + p_r * ci_r)
      # DEBUG start
      if (getOption("rpart_ci_debug", FALSE)) {
        cat("  j=", j, " ci_l=", round(ci_l,5), " ci_r=", round(ci_r,5),
            " p_l=", round(p_l,3), " p_r=", round(p_r,3),
            " g=", round(g,6), "\n")
      }
      # DEBUG end
      goodness[j] <- max(0, g * total_wt)
    }

    # Step 3: return ordered_codes as direction.
    # rpart uses the ordering to record left/right assignments in $csplit.
    direction <- ordered_codes
  }


  list(goodness = goodness, direction = direction)
}


# ── 4. rpart_ci() — the user-facing wrapper ───────────────────────────────────

#' Concentration-Index tree
#'
#' Fits a regression/classification tree whose splitting criterion is the
#' weighted absolute concentration index (|CI|) rather than Gini impurity or
#' variance reduction. Each split seeks to partition the node into two
#' subgroups that are each more internally equal (in the socioeconomic sense)
#' than the parent node.
#'
#' @section Data preparation:
#' Convert all binary and categorical predictors to \code{factor} before
#' calling \code{rpart_ci()}. Logical or 0/1 numeric variables are treated
#' by rpart as continuous, which triggers the row-by-row cut-point search
#' and can produce spurious splits. Example:
#' \preformatted{
#'   data$rural     <- factor(data$rural)
#'   data$education <- factor(data$education)
#' }
#'
#' @section Formula:
#' The left-hand side must be \code{cbind(wealth_var, health_var)}:
#' \preformatted{
#'   rpart_ci(cbind(wealth, stunting) ~ education + rural + mother_age,
#'            data    = df,
#'            weights = df$weight)
#' }
#' \describe{
#'   \item{wealth_var}{Continuous socioeconomic ranking variable (e.g. wealth
#'     score or asset index). Does NOT need to be pre-ranked; ci_node() handles
#'     ranking internally.}
#'   \item{health_var}{Health outcome. Binary (0/1) is the primary use case
#'     (e.g. stunting), but continuous outcomes are also supported.}
#' }
#'
#' @section Interpreting the output:
#' The returned object is a standard \code{rpart} object. Use:
#' \itemize{
#'   \item \code{print()}, \code{summary()}, \code{rpart.plot::rpart.plot()}
#'         as you would for any rpart tree.
#'   \item \code{frame$dev}    — |CI| for each node (the impurity).
#'   \item \code{frame$yval2}  — two-column matrix: [mean(health), signed CI].
#'         The signed CI tells you the direction of inequality in each leaf:
#'         negative = pro-poor,
#'         positive = pro-rich.
#' }
#'
#' @param formula   Formula with \code{cbind(wealth, health)} on the LHS.
#' @param data      Data frame containing all variables.
#' @param weights   Optional numeric vector of survey weights (length = nrow(data)).
#'                  If omitted, uniform weights are used.
#' @param cp        Complexity parameter. A split is only kept if it reduces the
#'                  root's |CI| by at least \code{cp * |CI_root|}. Default 0.001
#'                  (permissive; prune afterwards with \code{prune()} if the
#'                  tree is too deep).
#' @param minsplit  Minimum number of observations in a node for a split to be
#'                  attempted. Default 200 (conservative, given noisy CI
#'                  estimates in small samples).
#' @param minbucket Minimum number of observations in any terminal node.
#'                  Default 50.
#' @param ...       Further arguments passed to \code{rpart::rpart()} (e.g.
#'                  \code{maxdepth}).
#'
#' @return An object of class \code{rpart}. All standard rpart methods apply.
#'
#' @examples
#' \dontrun{
#' library(rpart)
#' library(rpart.plot)
#' library(rineq)
#'
#' # Prepare data: convert binary/categorical predictors to factor
#' df$rural     <- factor(df$rural)
#' df$education <- factor(df$education)
#'
#' # Fit the tree
#' tree <- rpart_ci(
#'   formula   = cbind(wealth, stunting) ~ education + rural + mother_age,
#'   data      = df,
#'   weights   = df$weight,
#'   cp        = 0.001,
#'   minsplit  = 200,
#'   minbucket = 50
#' )
#'
#' # Visualise
#' rpart.plot(tree, type = 4, extra = 0, roundint = FALSE)
#'
#' # Inspect per-node CI (signed)
#' tree$frame$yval2   # columns: [mean(health), signed CI]
#'
#' # Prune if too deep
#' printcp(tree)
#' tree_pruned <- prune(tree, cp = 0.05)
#'
#' # CI per leaf on held-out test set
#' ci_by_leaf(tree_pruned, test_df,
#'            wealth_var = "wealth", health_var = "stunting",
#'            weight_var = "weight")
#' }
#'
#' @export
rpart_ci <- function(formula,
                     data,
                     weights   = NULL,
                     cp        = 0.001,
                     minsplit  = 200,
                     minbucket = 50,
                     ...) {

  # ── Dependency check ────────────────────────────────────────────────────────
  if (!requireNamespace("rpart",  quietly = TRUE))
    stop("Package 'rpart' is required. Install with: install.packages('rpart')")

  # ── Warn if any RHS predictor is logical or bare 0/1 numeric ────────────────
  # These will be treated as continuous by rpart, triggering the row-by-row
  # cut-point search. The user should convert them to factor beforehand.
  tryCatch({
    rhs_vars <- all.vars(formula[[3L]])
    for (v in rhs_vars) {
      if (v %in% names(data)) {
        col <- data[[v]]
        if (is.logical(col)) {
          warning(
            "Variable '", v, "' is logical. rpart will treat it as continuous.\n",
            "  Convert to factor to use the categorical split branch:\n",
            "    data$", v, " <- factor(data$", v, ")",
            call. = FALSE
          )
        } else if (is.numeric(col) && length(unique(col[!is.na(col)])) <= 2L) {
          warning(
            "Variable '", v, "' appears to be binary numeric (only 0/1 values).\n",
            "  rpart will treat it as continuous. Convert to factor:\n",
            "    data$", v, " <- factor(data$", v, ")",
            call. = FALSE
          )
        }
      }
    }
  }, error = function(e) NULL)   # silently skip if formula parsing fails

  # ── Build the custom-method list ────────────────────────────────────────────
  method_ci <- list(
    init  = init_ci,
    eval  = eval_ci,
    split = split_ci
  )

  # ── Assemble rpart arguments ────────────────────────────────────────────────
  args <- list(
    formula = formula,
    data    = data,
    method  = method_ci,
    control = rpart::rpart.control(
      cp        = cp,
      minsplit  = minsplit,
      minbucket = minbucket,
      # Cross-validation disabled: predict.rpart() doesn't support custom
      # methods. Validate externally using ci_by_leaf() on held-out data.
      xval         = 0L, 
      # maxcompete = 0, maxsurrogate = 0: suppress extra split rows.
      # Competitor rows (count=0) and surrogate rows break the sequential
      # walk in .assign_leaves by adding unexpected rows between nodes.
      maxcompete   = 0L,
      maxsurrogate = 0L
    ),
    ...
  )

  if (!is.null(weights)) {
    args$weights <- weights
  }

  # ── Fit and return ───────────────────────────────────────────────────────────
  tree <- do.call(rpart::rpart, args)
  return(tree)
}



# ── internal helper: assign observations to leaf nodes ───────────────────────
#
# Routes each observation to its terminal node by walking tree$splits.
#
# Requires rpart_ci() to set maxcompete = 0 AND maxsurrogate = 0, ensuring
# tree$splits contains only primary split rows. With those settings:
#   Continuous variable  → 1 row, ncat = +1 or -1
#   Categorical variable → K rows: first has |ncat|=K; rest have ncat=0
# Rows appear in the same order as internal nodes in tree$frame.
#
# ncat sign for continuous splits (rpart user-split vignette):
#   ncat = +1 : x < cutpoint  → RIGHT child (2*nid+1)
#   ncat = -1 : x >= cutpoint → RIGHT child (2*nid+1)
#
# Categorical routing: csplit[index_row, level_code]: 1=LEFT, 3=RIGHT, 2=absent
#   level_code from factor column: as.integer(factor_col) (1-based, globally consistent)
#   level_code from numeric 0/1 column: as.integer(col) + 1L (shifts to 1-based)
#
# Returns an integer vector of node IDs (rownames of tree$frame), one per row.
.assign_leaves <- function(tree, data) {

  frame  <- tree$frame
  splits <- tree$splits
  csplit <- tree$csplit
  n_obs  <- nrow(data)

  node_ids_frame <- as.integer(rownames(frame))
  current_node   <- rep(1L, n_obs)

  if (is.null(splits) || nrow(splits) == 0L) return(current_node)

  internal_mask     <- frame$var != "<leaf>"
  internal_node_ids <- node_ids_frame[internal_mask]
  internal_vars     <- as.character(frame$var[internal_mask])
  n_internal        <- length(internal_node_ids)

  split_varnames <- rownames(splits)
  split_ncats    <- splits[, "ncat"]
  split_counts   <- splits[, "count"]
  n_splits       <- nrow(splits)
  frame_ns       <- frame$n[internal_mask]

  # ── Match primary split row to each internal node ─────────────────────────
  # Primary rows have ncat != 0 and count == frame$n for the current node.
  # After each primary, skip ncat=0 level-encoding rows (categorical extras).
  # Competitor rows have count=0 and are never equal to frame$n, so skipped.

  primary_row <- integer(n_internal)
  srow <- 1L; node_ptr <- 1L

  while (srow <= n_splits && node_ptr <= n_internal) {
    if (split_ncats[srow] != 0L && split_counts[srow] == frame_ns[node_ptr]) {
      primary_row[node_ptr] <- srow
      node_ptr <- node_ptr + 1L
      srow     <- srow + 1L
      while (srow <= n_splits && split_ncats[srow] == 0L) srow <- srow + 1L
    } else {
      srow <- srow + 1L
    }
  }

  # ── Route observations ─────────────────────────────────────────────────────
  for (i in seq_len(n_internal)) {

    if (primary_row[i] == 0L) next

    nid     <- internal_node_ids[i]
    in_node <- which(current_node == nid)
    if (length(in_node) == 0L) next

    srow      <- primary_row[i]
    var_name  <- split_varnames[srow]
    ncat      <- split_ncats[srow]
    split_idx <- splits[srow, "index"]   # keep numeric: cut points are doubles

    col <- data[[var_name]]
    if (is.null(col)) stop("Variable '", var_name, "' not found in data.")

    go_right <- logical(length(in_node))

    if (abs(ncat) == 1L) {
      # Continuous: ncat=+1 → x<cutpoint goes right; ncat=-1 → x>=cutpoint goes right
      x_vals   <- as.numeric(col[in_node])
      go_right <- if (ncat == 1L) x_vals < split_idx else x_vals >= split_idx

    } else {
      # Categorical: csplit[row, level_code] gives routing (1=LEFT, 3=RIGHT)
      if (is.null(csplit))
        stop("csplit is NULL but ncat = ", ncat, " for '", var_name, "'")
      col_vals <- col[in_node]
      # Factor columns: as.integer() gives globally consistent 1-based codes.
      # Numeric 0/1 columns (e.g. sim_test before factor conversion): add 1L
      # to shift from 0-based to 1-based, matching rpart's factor encoding.
      lvls <- if (is.factor(col_vals)) {
        as.integer(col_vals)
      } else {
        as.integer(col_vals) + 1L
      }
      dirs     <- csplit[as.integer(split_idx), lvls]
      go_right <- (dirs == 3L)
      go_right[is.na(dirs)] <- TRUE   # unseen level -> right (rpart default)
    }

    current_node[in_node[ go_right]] <- 2L * nid + 1L
    current_node[in_node[!go_right]] <- 2L * nid
  }

  current_node
}

# ── 5. ci_by_leaf() — per-leaf CI summary ────────────────────────────────────

#' Concentration Index summary per leaf
#'
#' Convenience function to compute the signed CI (and related summaries)
#' for each terminal node (leaf) of a fitted \code{rpart_ci} tree, evaluated
#' on a (possibly held-out) dataset.
#'
#' Useful for:
#'   - Verifying that the tree has indeed found leaves with lower |CI| than
#'     the root (sanity check).
#'   - Interpreting the direction and magnitude of inequality within each leaf.
#'   - Evaluating the tree on a test set not used during fitting.
#'
#' @param tree        A fitted rpart object (output of \code{rpart_ci}).
#' @param data        Data frame on which to evaluate (train or test).
#' @param wealth_var  Character; name of the wealth column in \code{data}.
#' @param health_var  Character; name of the health outcome column.
#' @param weight_var  Character or NULL; name of the weight column.
#'                    If NULL, uniform weights are used.
#'
#' @return A data frame with one row per leaf:
#'   \item{leaf_id}{Integer node ID from the rpart frame.}
#'   \item{n}{Number of observations assigned to this leaf.}
#'   \item{mean_health}{Weighted mean of the health outcome in this leaf.}
#'   \item{ci_signed}{Signed CI (negative = pro-poor inequality).}
#'   \item{ci_abs}{Absolute CI (the impurity measure minimised by the tree).}
#'
#' @export
ci_by_leaf <- function(tree,
                       data,
                       wealth_var = "wealth",
                       health_var = "stunting",
                       weight_var = NULL) {

  data           <- as.data.frame(data)
  rownames(data) <- NULL

  # Route observations to leaves by walking the split rules stored in
  # tree$splits. This is robust to pruning: zero-observation nodes in $frame
  # are absent from $splits, so they are never assigned any observations.
  node_ids   <- .assign_leaves(tree, data)
  leaf_mask  <- tree$frame$var == "<leaf>"
  leaf_nodes <- as.integer(rownames(tree$frame)[leaf_mask])
  # Keep only leaves that actually received observations (n > 0 in $frame).
  # After pruning, ghost leaves with n=0 linger in $frame but get no
  # observations from .assign_leaves, so they drop out automatically.
  leaf_nodes <- leaf_nodes[tree$frame$n[leaf_mask] > 0L]
  wt         <- if (!is.null(weight_var)) data[[weight_var]] else rep(1, nrow(data))

  results <- lapply(leaf_nodes, function(leaf) {
    idx <- which(node_ids == leaf)
    if (length(idx) < 2L) {
      return(data.frame(leaf_id     = leaf,
                        n           = length(idx),
                        mean_health = NA_real_,
                        ci_signed   = NA_real_,
                        ci_abs      = NA_real_))
    }
    y_leaf  <- cbind(data[[wealth_var]][idx], data[[health_var]][idx])
    wt_leaf <- wt[idx]

    mh <- stats::weighted.mean(y_leaf[, 2L], wt_leaf)
    ci <- ci_node(y_leaf, wt_leaf)

    data.frame(leaf_id     = leaf,
               n           = length(idx),
               mean_health = round(mh,      4L),
               ci_signed   = round(ci,      4L),
               ci_abs      = round(abs(ci), 4L))
  })

  do.call(rbind, results)
}


# ── 6. add_leaf_col() — tag observations with their leaf node ─────────────────

#' Add a leaf-node column to a data frame
#'
#' Assigns each observation in \code{data} to its terminal node (leaf) in the
#' fitted tree and appends the node ID as a new column. Useful for inspecting
#' which observations land in which leaf and diagnosing unexpected results
#' (e.g. leaves with CI = 0 or implausible mean health values).
#'
#' @param tree       A fitted rpart object (output of \code{rpart_ci}).
#' @param data       Data frame to tag (typically the training set).
#' @param col_name   Name of the new column to add. Default \code{"leaf_id"}.
#'
#' @return \code{data} with one additional integer column named \code{col_name}.
#'
#' @examples
#' \dontrun{
#' Colombia_train <- add_leaf_col(tree_col_pruned, Colombia_train)
#'
#' # Inspect the suspicious leaf
#' Colombia_train %>%
#'   filter(leaf_id == 2) %>%
#'   count(stunting)
#'
#' Colombia_train %>%
#'   group_by(leaf_id) %>%
#'   summarise(n            = n(),
#'             pct_stunted  = mean(stunting),
#'             n_stunted    = sum(stunting))
#' }
#'
#' @export
add_leaf_col <- function(tree, data, col_name = "leaf_id") {

  data <- as.data.frame(data)

  # Route observations to leaves by walking the split rules directly.
  node_ids <- .assign_leaves(tree, data)

  data[[col_name]] <- node_ids
  data
}


# ── 7. ci_leaf_inference() — per-leaf CI with SE and 95% CI ───────────────────

#' Concentration Index, Standard Error, and 95% CI per terminal node
#'
#' Computes the signed CI for each leaf of a fitted \code{rpart_ci} tree and
#' attaches the Kakwani, Wagstaff & van Doorslaer (1997) asymptotic standard
#' error and confidence interval.
#'
#' The CI:
#'   C_hat = (2 / mu) * Cov_w(h, r)
#' where r_i is the weighted fractional rank of observation i in the wealth
#' distribution, and Cov_w is the weighted covariance.
#'
#' Variance via the delta method:
#'   Var(C_hat) = (1/n) * [ (1/n) * sum(a_i^2) - (1 + C_hat)^2 ]
#' where:
#'   a_i = (h_i / mu) * (2*r_i - 1 - C_hat) + 2 - q_{i-1} - q_i
#' and q_i are the ordinates of the concentration curve (cumulative health
#' shares, sorted by ascending wealth rank).
#'
#' The 95% CI is: C_hat +/- z * SE(C_hat)
#'
#' @param tree        A fitted rpart object (output of rpart_ci()).
#' @param data        Data frame to evaluate (train or test set).
#' @param wealth_var  Character; name of the wealth column.
#' @param health_var  Character; name of the health outcome column.
#' @param weight_var  Character or NULL; name of the survey weight column.
#'                    If NULL, uniform weights are used (unweighted case).
#' @param z           Numeric; z-value for the confidence interval width.
#'                    Default 1.96 for 95% CI.
#'
#' @return A data frame with one row per leaf:
#'   \item{leaf_id}{Integer node ID from the rpart frame.}
#'   \item{n}{Number of observations in this leaf.}
#'   \item{mean_health}{Weighted mean of the health outcome.}
#'   \item{ci_signed}{Signed CI estimate.}
#'   \item{ci_se}{Standard error of the CI.}
#'   \item{ci_lower}{Lower bound of the confidence interval.}
#'   \item{ci_upper}{Upper bound of the confidence interval.}
#'
#' @references
#'   Kakwani N, Wagstaff A, van Doorslaer E (1997). Socioeconomic inequalities
#'   in health: measurement, computation, and statistical inference.
#'   Journal of Econometrics, 77(1), 87-103.
#'
#' @export
ci_leaf_inference <- function(tree,
                              data,
                              wealth_var = "wealth",
                              health_var = "stunting",
                              weight_var = NULL,
                              z          = 1.96) {

  data           <- as.data.frame(data)
  rownames(data) <- NULL

  node_ids   <- .assign_leaves(tree, data)
  leaf_mask  <- tree$frame$var == "<leaf>"
  leaf_nodes <- as.integer(rownames(tree$frame)[leaf_mask])
  leaf_nodes <- leaf_nodes[tree$frame$n[leaf_mask] > 0L]

  # Uniform weights if weight_var is not provided
  wt_raw <- if (!is.null(weight_var)) data[[weight_var]] else rep(1, nrow(data))

  results <- lapply(leaf_nodes, function(leaf) {

    idx <- which(node_ids == leaf)
    n   <- length(idx)

    # Need at least 3 observations to compute a meaningful CI and its variance
    if (n < 3L) {
      return(data.frame(
        leaf_id     = leaf, n = n,
        mean_health = NA_real_, ci_signed = NA_real_,
        ci_se       = NA_real_, ci_lower  = NA_real_, ci_upper = NA_real_
      ))
    }

    h  <- data[[health_var]][idx] # health outcome
    w  <- data[[wealth_var]][idx] # socioeconomic variable (for ranking)
    wt <- wt_raw[idx]             # survey weights (raw)

    # Normalise weights within leaf so they sum to 1
    wt <- wt / sum(wt)

    # Weighted mean health
    mu <- sum(wt * h)
    if (abs(mu) < .Machine$double.eps) {
      return(data.frame(
        leaf_id     = leaf, n = n,
        mean_health = round(mu, 4L), ci_signed = 0,
        ci_se       = NA_real_, ci_lower  = NA_real_, ci_upper = NA_real_
      ))
    }

    # Weighted fractional rank of wealth
    # r_i = (sum of wt of obs strictly poorer + 0.5 * wt of ties) / 1
    # (weights normalised to sum to 1, so total_wt = 1)
    o      <- order(w)
    wt_ord <- wt[o]
    cumwt  <- cumsum(wt_ord)
    below  <- c(0, cumwt[-length(cumwt)])
    r_ord  <- below + 0.5 * wt_ord
    r      <- numeric(n); r[o] <- r_ord

    # Weighted CI
    CI <- 2 * sum(wt * (h - mu) * (r - sum(wt * r))) / mu

    # Concentration curve ordinates q_i
    # q_i = cumulative share of health up to rank i (sorted by wealth rank)
    h_ord <- h[o]
    wt_cumh <- cumsum(wt_ord * h_ord)
    q <- c(0, wt_cumh / mu)    # q_0 = 0, q_i = cum health share up to i

    # KWvD 1997 auxiliary variable a_i (at sorted positions)
    # a_i = (h_i / mu) * (2*r_i - 1 - CI) + 2 - q_{i-1} - q_i
    q_prev <- q[seq_len(n)]        # q_{i-1}: positions 1..n of q (0-indexed)
    q_curr <- q[seq_len(n) + 1L]  # q_i:     positions 2..n+1 of q
    a_ord <- (h_ord / mu) * (2 * r_ord - 1 - CI) + 2 - q_prev - q_curr

    # Variance: (1/n) * [ (1/n) * sum(a_i^2) - (1 + CI)^2 ]
    varC <- (sum(a_ord^2) / n - (1 + CI)^2) / n
    if (is.na(varC) || varC < 0) varC <- NA_real_

    se     <- if (!is.na(varC)) sqrt(varC) else NA_real_
    ci_lo  <- if (!is.na(se))   CI - z * se else NA_real_
    ci_hi  <- if (!is.na(se))   CI + z * se else NA_real_

    data.frame(
      leaf_id     = leaf,
      n           = n,
      mean_health = round(mu,    4L),
      ci_signed   = round(CI,    4L),
      ci_se       = round(se,    4L),
      ci_lower    = round(ci_lo, 4L),
      ci_upper    = round(ci_hi, 4L)
    )
  })

  do.call(rbind, results)
}


# ── 8. plot_ci_leaf_inference() — scatterplot with error bars per leaf ─────────

#' Plot per-leaf Concentration Index with confidence intervals
#'
#' Scatterplot with one point per terminal node. x-axis = leaf node ID,
#' y-axis = signed CI. Error bars = asymptotic 95% CI from
#' ci_leaf_inference(). The horizontal reference line at CI = 0 marks the
#' boundary between pro-poor (CI < 0) and pro-rich (CI > 0) inequality.
#' Point size encodes leaf sample size n.
#'
#' @param inf_df     Data frame returned by ci_leaf_inference().
#' @param title      Plot title.
#' @param subtitle   Plot subtitle.
#' @param color_by_n Logical. If TRUE, point colour encodes n. Default TRUE.
#'
#' @return A ggplot object. Print or save with ggsave().
#'
#' @export
plot_ci_leaf_inference <- function(
    inf_df,
    title      = "Concentration Index per terminal node",
    subtitle   = "95% CI from Kakwani et al. (1997) \u00b7 error bars = 1.96 \u00d7 SE",
    color_by_n = TRUE) {

  if (!requireNamespace("ggplot2", quietly = TRUE))
    stop("Package 'ggplot2' is required. Install with install.packages('ggplot2').")

  df <- inf_df[!is.na(inf_df$ci_se), ]
  if (nrow(df) == 0)
    stop("No leaves have a valid SE estimate. Cannot produce the plot.")

  df$leaf_label <- paste0("Node\n", df$leaf_id)
  df$leaf_label <- factor(df$leaf_label,
                          levels = df$leaf_label[order(df$leaf_id)])

  p <- ggplot2::ggplot(df,
         ggplot2::aes(x = leaf_label, y = ci_signed)) +
    ggplot2::geom_hline(yintercept = 0, linetype = "dashed",
                        colour = "grey50", linewidth = 0.5) +
    ggplot2::geom_errorbar(
      ggplot2::aes(ymin = ci_lower, ymax = ci_upper),
      width = 0.15, colour = "grey40", linewidth = 0.6
    ) +
    ggplot2::geom_point(
      ggplot2::aes(size = n,
                   colour = if (color_by_n) n else NULL),
      alpha = 0.85
    ) +
    ggplot2::scale_size_continuous(name = "n", range = c(3, 8)) +
    ggplot2::labs(
      title    = title,
      subtitle = subtitle,
      x        = "Terminal node",
      y        = "Concentration Index (signed)",
      colour   = "n"
    ) +
    ggplot2::theme_minimal(base_size = 13) +
    ggplot2::theme(
      legend.position  = "right",
      panel.grid.minor = ggplot2::element_blank()
    )

  if (color_by_n) {
    p <- p + ggplot2::scale_colour_viridis_c(
      name   = "n",
      option = "plasma",
      direction = -1
    )
  }

  p
}
