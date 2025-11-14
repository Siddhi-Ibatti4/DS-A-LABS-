#PART-A DISCRIPTIVE STATISTICS AND VISUAL SUMMARIES
#DATASET - mtcars(built in r dataset)
#Q1. Calculate mean, median, mode, variance, standard deviation, and range of the mpg column.
mean(mtcars$mpg)
median(mtcars$mpg)
mpg_mode<-get_mode(mtcars$mpg) # dont know why is is returning numeric
var(mtcars$mpg)
sd(mtcars$mpg)
range(mtcars$mpg)
#Q2. Create a frequency table of the number of cylinders (cyl).
#Q3. Generate a histogram of mpg and overlay a density curve.
#Q4. Create a boxplot of mpg by cyl and interpret the spread.
#Q5. Use summary() to produce a descriptive statistics report of the dataset.