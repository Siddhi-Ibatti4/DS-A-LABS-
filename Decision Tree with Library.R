library(rpart)

# Fit decision tree regression
tree_model <- rpart(mpg ~ ., data=mtcars, method="anova")

# Predictions
y_pred_tree <- predict(tree_model, mtcars)

# RMSE and R²
rmse_tree <- sqrt(mean((mtcars$mpg - y_pred_tree)^2))
r2_tree <- 1 - sum((mtcars$mpg - y_pred_tree)^2) / sum((mtcars$mpg - mean(mtcars$mpg))^2)

cat("\nDecision Tree Regression (rpart) Metrics:\n")
cat("RMSE:", rmse_tree, "\n")
cat("R²:", r2_tree, "\n")

