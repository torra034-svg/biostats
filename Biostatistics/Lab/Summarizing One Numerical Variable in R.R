#import Lung Health Study dataset
lhs<-read.csv(file = file.choose(), header = TRUE)

#Summarize data
summary(lhs)

#load packages
library(psych)

#Guided Questions 

##1. What is the five-number summary of number of cigarettes per day at baseline (see f10cigs variable)?
##What is the mean number of cigarettes per day at baseline?
summary(lhs$f10cigs) ## The five-number summary for the minimum, 1st quarter, median, 3rd quarter, and maximum are the following, respectively: 2, 20, 30, 40, 120.
## The mean number of cigarettes per day at baseline is 31.27.

##2. Which of the following variables have missing values: number of years of education at baseline
## (yeareduc), weight change (kg) from baseline to 2nd annual visit (wgtchg02), salivary cotinine at
## 4th annual visit (COT4)?

### This function will give me the sum of total missing values for each column
sum(is.na(lhs$yeareduc)) ## This variable contains no NAs
sum(is.na(lhs$wgtchg02)) ## This variable contains 550 NAs
sum(is.na(lhs$C04)) ## This variable contains no NAs

#### Thus, the variable that has missing values is wgtch02.

##3. What is the mean age of the participants in the LHS study? What is the median age? The standard
## deviation of age? The minimum and maximum age?

summary(lhs$age) 
describe(lhs$age)

## The mean age of participants in this study is 48.47 years. The median age is 49, standard deviation is 6.83, minimum age is 34, and maximum age is 67.

##4. Using the histogram, approximately how many participants were between 30 and 35 years old at the
## beginning of the LHS study?

hist(lhs$age, main="Histogram of LHS Ages", xlab="Ages", breaks = 10)

### According to the histogram, there are approximately 150 particpants between 30-35 years old.

##5.Figure out how to make the color of the bars in the histogram for age, age, to be orange.

hist(lhs$age, main="Histogram of LHS Ages", xlab="Ages", breaks = 10, col = "orange")


##6. Figure out how to modify the binning of the histogram for age to your liking.
hist(lhs$age, main="Histogram of LHS Ages", xlab="Ages", breaks = 20)
