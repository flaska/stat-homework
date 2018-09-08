library(gapminder)
life_exp_vec = unlist(gapminder[,4])
year = filter(gapminder, year==1952)
m1 = mean(year[,4]<=40)
m2 = mean(year[,4]<=60)
print(m2-m1)

