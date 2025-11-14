#1.Calculate the mean, median, mode, and standard deviation of Petal.Width from iris.
library(dplyr)
library(modeest)

data(iris)
View(iris)
mean(iris$Petal.Width)
median(iris$Petal.Width)
mlv(iris$Petal.Width)
sd(iris$Petal.Width)

#2.Draw a histogram of mpg from the mtcars dataset.
library(ggplot2)
data("mtcars")
hist(mtcars$mpg,
     main ="histogram of mpg from the mtcars dataset",
     xlab = "mpg",col = "lightblue",border = "black")

#3.Create a scatterplot of hp vs mpg from mtcars.

plot(mtcars$hp,mtcars$mpg,
     main = "hp vs mpg scatterplot",
     xlab = "hp",ylab = "mpg", col="lightblue",pch=19)

#4.Generate a boxplot for Ozone in the airquality dataset.
boxplot(airquality$Ozone,data=airquality,
        main="boxplot of ozone",
        xlab="Ozone",col="blue")
#5.Find the variance of Sepal.Width in the iris dataset

var(iris$Sepal.Width)
