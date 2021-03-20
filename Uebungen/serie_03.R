# Aufgabe 3.1

# a)
# Datensatz einlesen
geysir <- read.table("../Daten/geysir.dat", header = TRUE)
summary(geysir)
# 4 Graphiken im Graphikfenster
par(mfrow = c(2,2))
hist(geysir[, "Zeitspanne"])
hist(geysir[, "Zeitspanne"], breaks = 20)
hist(geysir[, "Zeitspanne"], breaks = seq(41, 96, by = 11))


geysir[, "Eruptionsdauer"]
geysir$Eruptionsdauer
par(mfrow = c(3,2))
hist(geysir$Eruptionsdauer)
hist(geysir[, "Zeitspanne"])
hist(geysir$Eruptionsdauer, breaks = 20)
hist(geysir[, "Zeitspanne"], breaks = 20)
hist(geysir$Eruptionsdauer, breaks = seq(1.7, 4.9, by = 0.64))
hist(geysir[, "Zeitspanne"], breaks = seq(41, 96, by = 11))


# Aufgabe 3.2
mannfrau <- read.csv('../Daten/mannfrau.csv')
summary(mannfrau)

plot(mannfrau$groesse.mann, mannfrau$groesse.frau,
     xlab = "grösse Mann",
     ylab = "grösse Frau",
     col = "blue",
     pch = 20
)
lm(mannfrau$groesse.frau ~ mannfrau$groesse.mann)
abline(coef = c(110.444, 0.2884))
abline(coef = c(0, 1), col = "orange")

# Aufgabe 3.3
income <- read.table("../Daten/income.dat", header = TRUE)
summary(income)

lm(income$AFQ ~ income$Income2005)
lm(income$Educ ~ income$Income2005)
par(mfrow = c(2,1))
plot(income$Income2005, income$AFQT)
abline(coef = c(4.539e+01, 1.831e-04), col = "orange", type = "l")
plot(income$Income2005, income$Educ)
abline(coef = c(1.298e+01, 1.852e-05), col = "orange", type = "l")

# Aufgabe 3.4
head(anscombe)
par(mfrow = c(2,2))
plot(anscombe$x1, anscombe$y1)
abline(lm(anscombe$y1 ~ anscombe$x1))
plot(anscombe$x2, anscombe$y2)
abline(lm(anscombe$y2 ~ anscombe$x2))
plot(anscombe$x3, anscombe$y2)
abline(lm(anscombe$y3 ~ anscombe$x3))
plot(anscombe$x4, anscombe$y2)
abline(lm(anscombe$y4 ~ anscombe$x4))

