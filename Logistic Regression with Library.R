# Fit logistic regression using glm
model <- glm(high_mpg ~ . - mpg, data=mtcars, family=binomial)

summary(model)

# Predictions
y_pred_lm <- ifelse(predict(model, type="response") > 0.5, 1, 0)

# Performance metrics
accuracy_lm <- mean(y_pred_lm == mtcars$high_mpg)
roc_lm <- roc(mtcars$high_mpg, predict(model, type="response"))
auc_lm <- auc(roc_lm)

cat("\nLibrary Logistic Regression Performance:\n")
cat("Accuracy:", accuracy_lm, "\n")
cat("AUC:", auc_lm, "\n")

