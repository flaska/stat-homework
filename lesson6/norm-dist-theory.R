library(dplyr)
library(rafalib)

rm(list=ls())
mice <- read.csv('lesson6/mice_pheno.csv')
mice <- na.omit(mice)

maleChow = filter(mice, Sex=='M', Diet=='chow')[,3]


# all the BS below to find standard deviation
mean = mean(maleChow)
diffs = maleChow - mean
sqdiffs = diffs**2
sum = sum(sqdiffs)
sumoverm = sum / length(maleChow)
manvar = sqrt(sumoverm)

# single command
var = popsd(maleChow)

propplus = mean(maleChow<mean+3*var)
propminus = mean(maleChow<mean-3*var)
print(propplus-propminus)

qqnorm(z)
abline(0,1)