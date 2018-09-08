# normal distribution
plot(dnorm(seq(from=-10, to=10, by=.1)))

# cumulative probability
plot(pnorm(seq(from=-10, to=10, by=.1)))

# to explore
plot(qnorm(seq(from=0, to=1, by=.01)))

#random from norm dist
hist(rnorm(1000), seq(-4, 4, 0.1))