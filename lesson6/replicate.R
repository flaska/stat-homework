library(dplyr)
library(rafalib)

rm(list=ls())
mice <- read.csv('lesson6/mice_pheno.csv')
mice <- na.omit(mice)


y <- filter(mice, Sex=="M" & Diet=="chow") %>% select(Bodyweight) %>% unlist
set.seed(1)
avgs <- replicate(10000, mean( sample(y, 25)))
mypar(2,2)
hist(avgs)
qqnorm(avgs)
qqline(avgs)