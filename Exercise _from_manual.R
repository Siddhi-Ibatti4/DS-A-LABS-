#Q.1 Dispaly First 15 rows of mtcars dataset
mtcars   #loading of mtcars dataset
head(mtcars,15)  #Displaying 1st 15 rows of dataset
View(mtcars)    #To view file in spreadsheet like format

#Q.2 Find the maximun and minimumvalue of Sepal.length from iris.
iris #loading dataset as it is inbuit dataset so only name issufficient for loading of dataset
min(iris$Sepal.Length)
max(iris$Sepal.Length)

#We can get min and max together in oneline only by using range
range(iris$Sepal.Length)  # $ will return you named elements

#Q.3 calculate  the mean of the variable mpg in mtcars
mean(mtcars$mpg)

#Q.4 Dispaly the Structure of airquality dataset
str(airquality)

#Q.5Check whether the the number 100 is greater than 50 in R
greater_check <- 100>50
print(greater_check)


