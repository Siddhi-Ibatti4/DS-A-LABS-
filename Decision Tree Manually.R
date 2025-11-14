# Load dataset
data(mtcars)

X <- mtcars[, !colnames(mtcars) %in% c("mpg")]
y <- mtcars$mpg

best_split <- function(X, y) {
  best_var <- NULL
  best_cut <- NULL
  best_mse <- Inf
  
  for (var in colnames(X)) {
    values <- unique(X[[var]])
    for (cut in values) {
      left_idx <- which(X[[var]] <= cut)
      right_idx <- which(X[[var]] > cut)
      
      # Skip if either side has fewer than 2 points (variance undefined)
      if (length(left_idx) < 2 || length(right_idx) < 2) next
      
      left_var <- var(y[left_idx])
      right_var <- var(y[right_idx])
      
      # Skip if variance is NA
      if (is.na(left_var) || is.na(right_var)) next
      
      mse <- (length(left_idx) * left_var + length(right_idx) * right_var) / length(y)
      
      if (!is.na(mse) && mse < best_mse) {
        best_mse <- mse
        best_var <- var
        best_cut <- cut
      }
    }
  }
  return(list(var = best_var, cut = best_cut, mse = best_mse))
}

split <- best_split(X, y)
cat("Best split manually found:\n")
print(split)