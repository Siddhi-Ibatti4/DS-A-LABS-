# Load dataset
data(mtcars)

# Create feature matrix X (all predictors)
X <- as.matrix(cbind(1, mtcars[, !colnames(mtcars) %in% "mpg"]))  # add intercept manually

# Target vector y
y <- mtcars$mpg

# Normal Equation: theta = (X^T X)^(-1) X^T y
theta <- solve(t(X) %*% X) %*% (t(X) %*% y)

# Print coefficients
cat("===== Manual Linear Regression (Normal Equation) =====\n")
cat("Intercept:\n")
print(theta[1])
cat("\nCoefficients:\n")
print(theta[-1])

