# Basic printing
print("Hello...! My name is Siddhi")

#Variable Assignment 
# Method 1 : 
a=20
print(a)
# Method 2 : 
b<-40
print(b)
# Method 3 :
50->d
print(d)

#Arithmetic Operations
#1.Addition 
x<-20 
y<-5
sum<- x + y
print(sum)

#2.Substraction
diff<- x-y
print(diff)

#3.Multiplication
mul<- x*y
print(mul)

#4.Division
div<- x/y
print(div)

#5.Modulus
#unlike other programming languges in r single % dont give you modulus we have to use %% & to find quotien we can use %/%
mod<-x%%y
print(mod)

#Quotient finding
quotient<- x%/%y
print(quotient)

#Relational Operators in R
greater_check<- x>y
print(greater_check)

equal_check <- x==y
print(equal_check)

lessthan_check=x<y
print(lessthan_check)

#Loading & Exploring iris dataset
data("iris") #Loading dataset
head(iris) #will display first few rows of dataset
str(iris)  #will display structure of data set
summary(iris)  #will display summary of dataset

