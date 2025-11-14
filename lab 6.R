#6:Exploratory Data Analysis (EDA) in R
library(dplyr)
library(ggplot2)
library(GGally)
library(ggcorrplot)

#loading necessary dataset

data("iris")
View(iris)
head(iris)

#1.statistics
summary(iris)
#2.Histogram of Sepal.Length

ggplot(iris,aes(x=Sepal.Length))+
geom_histogram(bins = 20,fill="lightblue",color="black")+
  labs(title = "Distribution of Sepal Length", x = "Sepal Length", y = "Frequency")
  
#3.Scatterplot sepal.length vs petal.length

ggplot(iris,aes(x=Sepal.Length,y=Petal.Length,color=Species))+
  geom_point(size=3)+
  labs(title="Sepal length vs Petal Length")

#4.Boxplot of Sepal.Width by Species

ggplot(iris,aes(x=Species,y=Sepal.Width,fill = Species))+
  geom_boxplot()+
  labs(title = "Boxplot of Sepal.Width by Species")

#5.Correlation matrix

corr_matrix =cor(iris[,1:4])
corr_matrix
 # error
ggcorrplot(corr_matrix, lab=TRUE,title = "Correlation matrix")

#6.Pair plot

ggpairs(iris[, 1:4])



















