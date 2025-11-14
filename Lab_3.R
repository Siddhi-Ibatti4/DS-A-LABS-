#LAB 3
#Data Cleaning & Preprocessing in R
library(dplyr)

#Load dataset
airquality
head(airquality)

#Check for missing values
sum(is.na(airquality))
colSums(is.na(airquality))

#Replace Missing values
#Handling lmissing values is Ozone
airquality$Ozone[is.na(airquality$Ozone)]<- mean(airquality$Ozone,na.rm=TRUE)

#handling Missing Vslues in Solar.R
airquality$Solar.R[is.na(airquality$Solar.R)] <-median(airquality$Ozone,na.rm=TRUE)

#Checking is missing values replaced or not
colSums(is.na(airquality))

#Removing Duplicates
iris
iris_with_duplicates<- rbind(iris,iris[1:5])
nrow(iris_with_duplicates)
clean_iris<-distinct(iris_with_duplicates)
nrow(clean_iris)

#Standardize Format
clean_iris$Species <- tolower(as.character(clean_iris$Species))
clean_iris$Species <- as.factor(clean_iris$Species)

#View cleaned dataset
head(clean_iris)
