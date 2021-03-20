
# Aufgabe 2.1
winner <- c(183, 191, 185, 185, 182, 182, 188, 188, 188, 185, 185, 177,
            182, 182, 193, 183, 179, 179, 175)
opponent <- c(191, 165, 187, 175, 193, 185, 187, 188, 173, 180, 177, 183,
              185, 180, 180, 182, 178, 178, 173)
# a)
length(winner)
length(opponent)

# b)
winner[6:10]
# c)
winner[c(3, 5, 10:12)]

# d)
winner[7:8] <- 189

# e)
mean(winner) > mean(opponent)

# f) -> 2.842105
mean(winner - opponent)
#äquivalent: mean (winner)- mean(opponent)

# g)
var(winner) # 22.099...
sd(winner) # 3.701...

# h)
winner.mean <- mean(winner)
winner.variance <- sum((winner - winner.mean)^2) / (length(winner) -1)
winner.variance == var(winner) # TRUE

# Aufgabe 2.2
noten <- c(4.2, 2.3, 5.6, 4.5, 4.8, 3.9, 5.9, 2.4, 5.9, 6, 4, 3.7, 5, 5.2, 4.5, 3.6, 5, 6, 2.8, 3.3, 5.5, 4.2, 4.9, 5.1)

# a)
notensorted <- sort(noten)
notensorted.mean <- mean(notensorted)
notensorted.median <- median(notensorted)
notensorted.mean #4.5125
notensorted.median #4.65
notensorted
notensorted[1:3] <- 4
notensorted.newmean <- mean(notensorted)
notensorted.newmedian <- median(notensorted)
notensorted.newmedian == notensorted.median # TRUE
notensorted.newmean - notensorted.mean # 0.1875 

# b)
notensorted <- sort(noten)
notensorted2 <- notensorted
notensorted2[1:3] <- 4

boxplot(notensorted, notensorted2)

# Aufgabe 2.3
mannfrau <- read.csv('../Daten/mannfrau.csv')
dim(mannfrau)
dimnames(mannfrau)
names(mannfrau)
altersdiff <- mannfrau["alter.mann"] - mannfrau["alter.frau"]
boxplot(altersdiff)

# Aufgabe 2.4
head(InsectSprays)

# a)
tapply(InsectSprays[, "count"], InsectSprays[, "spray"], FUN = mean)
tapply(InsectSprays$count, InsectSprays$spray, mean)

# b)
boxplot(count ~ spray, InsectSprays, col = c("orange", "blue", "limegreen", "red", "brown", "purple"))


#Aufgabe 2.5
diet <- read.csv("../Daten/Diet.csv")
