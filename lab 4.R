# 4.Descriptive Statistics and basic visualization in R
install.packages("modeest")
library(dplyr)
library(ggplot2)
library(modeest)

data("iris")
View(iris)
head(iris)

#Descriptive statistics.

mean(iris$Sepal.Length) #mean 
median(iris$Sepal.Length) #median
mlv(iris$Sepal.Length,method = "mfv") #mode
sd(iris$Sepal.Length) #standard derivation 
range(iris$Sepal.Length) #Range
summary(iris$Sepal.Length) #Summary

#Histogram 
hist(iris$Sepal.Length,
     main="histogram of sepal length",
     xlab = "sepal length",col = "lightblue",border="black")

#Scatterplot
plot(iris$Sepal.Length,iris$Petal.Length,
     main="Scatterplot of sepal vs petal length",
     xlab = "sepal length",ylab = "petal length",
     col="lightblue",pch=19)

#boxplot
#error
boxplot(Sepal.length~species ,data = iris,
        main="boxplot of sepal length by species",
        xlab = "species",ylab = "sepal length",
        col=c("lightblue","lightgreen","pink"))





































