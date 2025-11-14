# Load dataset
data(mtcars)

# Fit linear regression model
model <- lm(mpg ~ ., data = mtcars)

# Summary of model
summary(model).

