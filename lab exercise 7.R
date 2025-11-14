#1.Perform a one-sample t-test to check if the mean mpg in mtcars differs from 20.
library(dplyr)

data(mtcars)
t.test(mtcars$mpg, mu = 20)

#2.Compare Petal.Width across species in iris using ANOVA.
anova_model <- aov(Petal.Width ~ Species, data = iris)
summary(anova_model)

#3.Find the correlation between mpg and hp in mtcars.
correlation<-cor(mtcars$mpg,mtcars$hp)
correlation

#4.Perform a paired t-test on Sepal.Length and Sepal.Width in iris.
data(iris)
t.test(iris$Sepal.Length, iris$Sepal.Width, paired = TRUE)

#5.Check if Ozone and Temp in airquality are significantly correlated.
data(airquality)
cor.test(airquality$Ozone, airquality$Temp)
