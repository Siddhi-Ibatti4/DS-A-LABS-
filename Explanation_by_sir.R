a<-20
class(a)
?read.table #represents help
?read.csv
golf<-read.csv('DEV_SAMPLE.csv')
View(golf)

?head
head(golf)
class(golf)
?class

new.matrix <- as.matrix(golf)
class(new.matrix)
new.matrix

new.vector <- as.vector(golf$Balance)
class(new.vector)

?str()
str(golf)
#
a1<- 25
class(a1)


o.list <- list(fname="Bruccee", lname="Wayen", age="50")
?list
class(o.list)
o.list
