library(dplyr)
library(rafalib)

nrMes = 10^5
sampSize = 4

propertyDist = seq(from=0, to=100, by=1)

plot(propertyDist)
hist(propertyDist, breaks=seq(from=0, to=100, by=1))


avgs = vector(mode='numeric', nrMes)
set.seed(1)

for (i in 1:nrMes) {
  s = sample(propertyDist, sampSize)
  avgs[i] = mean(s)
}

hist(avgs, seq(from=0, to=100, by=1))
