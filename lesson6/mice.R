library(dplyr)
library(rafalib)

rm(list=ls())
mice <- read.csv('lesson6/mice_pheno.csv')
mice <- na.omit(mice)

chowMaleDiet = filter(mice, Diet=='chow', Sex=='M')
meanWeightChowMaleDiet = mean(chowMaleDiet[,3])

print(meanWeightChowMaleDiet) # mean

popVar = popsd(chowMaleDiet[,3])

print(popVar) # population variance

set.seed(1)

samp = sample(chowMaleDiet[,3], 25)
meansamp = mean(samp)

print(meansamp)


hfMaleDiet = filter(mice, Diet=='hf', Sex=='M')
meanWeightHfMaleDiet = mean(hfMaleDiet[,3])

print(meanWeightHfMaleDiet)

popVar = popsd(hfMaleDiet[,3])
print(popVar)


set.seed(1)

samp1 = sample(hfMaleDiet[,3], 25)
meansamp1 = mean(samp1)
print(meansamp1)

print((meanWeightHfMaleDiet - meanWeightChowMaleDiet) - (meansamp1 - meansamp))