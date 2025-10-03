#Loading Packages
library(dplyr)

#Importing Iris Dataset
iris

head(iris)
str(iris)
summary(iris)


#Importin mtcars
data(mtcars)
head(mtcars)
str(mtcars)

#Loading Titanic dataset
titanic
View(titanic)

#Checking for missing Values
sum(is.na(iris))
colSums(is.na(mtcars))

#Summarize Distribution by groups
iris %>%
  group_by(Species) %>%
  summarise(
    Avg_Sepal_Length=mean(Sepal.Length),
    Avg_Petal_Length=mean(Petal.Length)
  )
  
