# Load dataset
data(mtcars)

# Feature matrix and target
X <- as.matrix(mtcars[, !colnames(mtcars) %in% c("mpg")])
y <- mtcars$mpg

# Feature scaling (important for KNN)
X_scaled <- scale(X)

# Manual KNN prediction function
knn_predict <- function(X_train, y_train, X_test, k=3) {
  n_test <- nrow(X_test)
  y_pred <- numeric(n_test)
  
  for (i in 1:n_test) {
    distances <- sqrt(rowSums((X_train - matrix(X_test[i,], nrow=nrow(X_train), ncol=ncol(X_train), byrow=TRUE))^2))
    nearest_idx <- order(distances)[1:k]
    y_pred[i] <- mean(y_train[nearest_idx])
  }
  
  return(y_pred)
}

# Predict using K=3
y_pred_manual <- knn_predict(X_scaled, y, X_scaled, k=3)

# RMSE and R²
rmse_manual <- sqrt(mean((y - y_pred_manual)^2))
r2_manual <- 1 - sum((y - y_pred_manual)^2) / sum((y - mean(y))^2)

cat("Manual KNN Regression Metrics:\n")
cat("RMSE:", rmse_manual, "\n")
cat("R²:", r2_manual, "\n")
