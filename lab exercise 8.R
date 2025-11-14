#1Build a regression model predicting Petal.Length from Sepal.Length in iris.
library(dplyr)
library(ggplot2)
model_simple <- lm(Petal.Length~ Sepal.Length, data = iris)
summary(model_simple)

#2Create a multiple regression model predicting mpg using wt, hp, and drat in mtcars.
model_multiple <- lm(mpg ~ wt+hp+drat, data = mtcars)
summary(model_multiple)

#3Check the R2 and Adjusted R2 of the model in Q2.
summary(model_multiple)$r.squared
summary(model_multiple)$adj.r.squared
#4Plot residuals of your regression model in Q1 and interpret the result.
# Residual Plot
plot(model_simple$residuals,main = "Residual Plot for Simple Regression Model",
     ylab = "Residuals",xlab = "Index",
     pch = 19,col = "blue")
abline(h = 0, col = "red", lwd = 2)



#5Build a regression model predicting Ozone using Temp from the airquality dataset.
data(airquality)

model_ozone <- lm(Ozone ~ Temp, data = airquality, na.action = na.omit)
summary(model_ozone)

