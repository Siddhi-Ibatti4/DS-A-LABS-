# Load dataset
data(mtcars)

# Binary target: 1 if mpg > 20 else 0
mtcars$high_mpg <- ifelse(mtcars$mpg > 20, 1, 0)

# Feature matrix (with intercept)
X <- as.matrix(cbind(Intercept=1, mtcars[, !colnames(mtcars) %in% c("mpg","high_mpg")]))
y <- mtcars$high_mpg

# Sigmoid function
sigmoid <- function(z) 1 / (1 + exp(-z))

# Gradient Descent
beta <- rep(0, ncol(X))
alpha <- 0.01
iterations <- 10000

for (i in 1:iterations) {
  y_pred <- sigmoid(X %*% beta)
  gradient <- t(X) %*% (y_pred - y) / length(y)
  beta <- beta - alpha * gradient
}

cat("Manual Logistic Regression Coefficients:\n")
print(beta)

# Predictions
y_pred_manual <- ifelse(sigmoid(X %*% beta) > 0.5, 1, 0)

# Performance metrics
accuracy_manual <- mean(y_pred_manual == y)
library(pROC)
auc_manual <- auc(roc(y, sigmoid(X %*% beta)))

cat("\nManual Logistic Regression Performance:\n")
cat("Accuracy:", accuracy_manual, "\n")
cat("AUC:", auc_manual, "\n")

