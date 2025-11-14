#1.Create a histogram of mpg from the mtcars dataset.
library(dplyr)
library(ggplot2)
library(GGally)
library(ggcorrplot)
#1.Create a histogram of mpg from the mtcars dataset.
data("mtcars")
ggplot(mtcars,aes(x=mtcars$mpg))+
  geom_histogram(bins = 20,fill="lightblue",color="black")+
  labs(title = "Distribution of mpg",x="mpg",y="frequency")

#2.Generate a scatterplot of hp vs wt from mtcars.
data(mtcars)
ggplot(mtcars,aes(x=hp,y=wt,color=cyl))+
  geom_point(size=3)+
  labs(title="hp vs mt")
#3.Draw a boxplot of Ozone values from the airquality dataset.
data("airquality")
boxplot(airquality$Ozone,
        main = "Boxplot of Ozone Levels",ylab = "Ozone",
        col = "lightblue",border = "darkblue")

#4.Find the correlation between Sepal.Length and Sepal.Width in iris.
data(iris)
cor(iris$Sepal.Length, iris$Sepal.Width)

#5.Create a pair plot of the first four columns of mtcars.
data(mtcars)
ggpairs(mtcars[,1:4])









