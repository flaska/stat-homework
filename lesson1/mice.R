set.seed(1)
random_averages <- vector(mode="numeric", length=1000)
for(i in 1:1000) {
  random_averages[i] <-mean(sample(fempop[,1], 50))
}
deviation = random_averages-mean(fempop[,1])
toomuch = which(abs(deviation)>1)

print(length(toomuch))
