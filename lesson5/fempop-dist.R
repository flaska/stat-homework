rm(list=ls())
fempop = read.csv('./lesson5/femaleControlsPopulation.csv')

random_five_avgs = vector('numeric',1000)
random_fifty_avgs = vector('numeric',1000)

set.seed(1)
for (i in 1:1000) {
  samp = sample(fempop[,1], 5)
  random_five_avgs[i] = mean(samp)
}

set.seed(1)
for (i in 1:1000) {
  samp = sample(fempop[,1], 50)
  random_fifty_avgs[i] = mean(samp)
}

hist(random_five_avgs)
hist(random_fifty_avgs)


pnorm(25, 23.9, 0.43)-pnorm(23, 23.9, 0.43)




plot(dnorm(seq(20,27, 0.01), 23.9, 0.43))
