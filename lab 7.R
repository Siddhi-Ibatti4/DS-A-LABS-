#7:Statistical Tests in R

library(dplyr)
#Load necessary dataset
data("iris")
#error
#1.t-test: Compare Sepal.Length of setosa and versicolor

t_test_result <-t.test(Sepal.length~Species,
                       data=iris%>%filter(species%in% c("setosa",
                                                        "versicolor")))
t_test_result
#error
#2.ANOVA:Compare Sepal.Length across all species

anova_model <- aov(Sepal.Length Species, data = iris)
summary(anova_model)

#3.Correlation:Sepal.Length and Petal.Length
correlation <- cor(iris$Sepal.Length, iris$Petal.Length)
correlation
#error
#4.Correlation test with significance
cor_test <- cor.test(iris$Sepal.Length, iris Petal.Length)
cor_test










