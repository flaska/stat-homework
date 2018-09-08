
library(dplyr)
library(rafalib)

rm(list=ls())
mice <- read.csv('lesson6/mice_pheno.csv')
mice <- na.omit(mice)

maleChow = filter(mice, Sex=='M', Diet=='chow')[,3]

hist(maleChow, breaks=seq(from=10, to=50, length.out=20))
#histogram of male mice on regulated diet


avgs = vector(mode='numeric', 100000)
set.seed(1)

for (i in 1:100000) {
  s = sample(maleChow, 1)
  avgs[i] = mean(s)
}

hist(avgs, seq(from=0, to=50, by=0.2))
