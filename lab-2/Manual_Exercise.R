#Q1.Import the airquality dataset and check its structure using str()
airquality
str(airquality)

#Q2.Find the numbers of missing values in airquality
colSums(is.na(airquality))

#Q3.Use summary() on mtcars and interpret the output
summary(mtcars)

#Q4.Find the mean horsepower (hp) in mtcars dataset
mtcars
mean(mtcars$hp)

#Q5.library(dplyr)
iris %>%
  group_by(Species) %>%
  summarise(avg_sepal_width = mean(Sepal.Width))