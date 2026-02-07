#Normal Distributions in R

#1. What is the probability of having at most a RAND-36 mental health score of 33?

pnorm(33, mean = 50, sd = 10) ## There is a 0.04 probability of having at most a RAND-36 score of 33.

#2. What is the probability of finding RAND-36 mental health scores between 33 and 58?

pnorm(58, mean = 50, sd = 10) - pnorm(33, mean = 50, sd =10) ## The probability of having a score between 33-58 is 0.7435

#3. What is the probability of finding a RAND-36 mental health score of 45 or less? Find this in two ways:
# using the unstandardized value (i.e., 45) and then using its associated z-score.

pnorm(45, mean=50, sd =10)
zscore <- (45-50)/(10)
1-pnorm(zscore)
