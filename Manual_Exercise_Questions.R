#Q1.Count how many missing values are present in airquality dataset
airquality
colSums(is.na(airquality))

#Q2.Replace missing values in Ozone with median instead of mean.
head(airquality$Ozone)
airquality$Ozone[is.na(airquality$Ozone)] <- median(airquality$Ozone,na.rm=TRUE)
head(airquality$Ozone)

#Q3.Create a duplicate dataset from mtcars and remove duplicates
mtcars
ncol(mtcars)
mtcars_with_artificial_dupes<-rbind(mtcars,mtcars[1:10,])
head(mtcars_with_artificial_dupes)
nrow(mtcars_with_artificial_dupes)
clea_mtcars<-distinct(mtcars_with_artificial_dupes)
nrow(clea_mtcars)

#Q.4Convert all car  names in mtcars row names to Upper case
rownames(mtcars) <- toupper(rownames(mtcars))
head(mtcars)

#Q5.Convert the Species coloumn in iris datset into numeric  codes (1,2,3)
iris$Species_code <- as.numeric(factor(iris$Species, 
                                       levels = c("setosa", "versicolor", "virginica")))
table(iris$Species, iris$Species_code)