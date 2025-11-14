# Install and load the FNN package
install.packages("FNN")
library(FNN)

# Sample data (replace with your actual dataset)
set.seed(123)
X <- matrix(runif(100), ncol = 2)  # 50 observations, 2 features
y <- rnorm(50)                    # Target variable

# Scale the features
X_scaled <- scale(X)

# KNN regression with K = 3
knn_model <- knn.reg(train = X_scaled, test = X_scaled, y = y, k = 3)

# Predictions
y_pred_lib <- knn_model$pred

# RMSE and R² calculations
rmse_lib <- sqrt(mean((y - y_pred_lib)^2))
r2_lib <- 1 - sum((y - y_pred_lib)^2) / sum((y - mean(y))^2)

# Output the results
cat("\nLibrary KNN Regression Metrics:\n")
cat("RMSE:", rmse_lib, "\n")
cat("R²:", r2_lib, "\n")
