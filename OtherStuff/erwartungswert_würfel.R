
config.samplesize <- 100
config.arraylenght <- 500
cycles <- c(1:config.arraylenght)
averages <- c()
absAverages <- c()

for (x in cycles){
  values <- sample(1:6, config.samplesize, replace=TRUE)
  averages[x] <- mean(values)
}

absAverages[1] <- averages[1]
for (x in 2:config.arraylenght){
  absAverages[x] <- (absAverages[x - 1] * (x - 1) + averages[x]) / x
}

#plot(cycles, averages)
plot(cycles, absAverages)
abline(h=3.5)




