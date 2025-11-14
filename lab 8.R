#8:Regression Analysis in R

library(dplyr)
library(ggplot2)

data("mtcars")
View(mtcars)
head(mtcars)

#1.Simple Linear Regression

model_simple <-lm(mpg~wt,data = mtcars)
summary(model_simple)

#2.plot regression line

ggplot(mtcars,aes(x=wt,y=mpg))+
  geom_point(method="lm",se=TRUE,color="red")+
  labs(title="simple linear regression wt vs mpg",
       x="weight (1000)lbs",y="miles per gallon")

#3.multiple linear regression:mpg predicted by wt and hp

model_multiple<-lm(mpg~wt+hp,data=mtcars)
summary(model_multiple)

#4.residual dignostics

plot(model_multiple, which=1)
plot(model_multiple,which = 2)









