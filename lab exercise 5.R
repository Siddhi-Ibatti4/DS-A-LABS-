#1.Perform binning on Sepal.Length from iris into categories: Short, Medium, Long.

data("iris")
iris$Sepal.Length_category<-cut(iris$Sepal.Length,
                                breaks = 3,
                                labels=c("Low","Medium","high"))
table(iris$Sepal.Length_category)

#2.Convert Species column in iris into dummy variables (One-Hot Encoding).
#3.Normalized mpg in mtcars dataset

data("mtcars")
mtcars$mpg_normalized <-(mtcars$mpg -min(mtcars$mpg))/
  (max(mtcars$mpg) -min(mtcars$mpg))
head(mtcars$mpg_normalized)

#4.Standardize the Sepal.Width column in iris.
data("iris")
iris$Sepal.Width_std <-scale(iris$Sepal.Width)
head(iris$Sepal.Width_std)

#5.Create a new feature in mtcars: efficiency = mpg / hp.
data(mtcars)
mtcars$efficiency<-mtcars$mpg/mtcars$hp
head(mtcars$efficiency)






