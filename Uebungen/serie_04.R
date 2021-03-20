
# Aufgabe 4.1

geysir <- read.table("../Daten/geysir.dat", header = TRUE)
geysir.meanErupt <- mean(geysir$Eruptionsdauer)
geysir.meanZeitsp <- mean(geysir$Zeitspanne)
head (geysir)
plot (geysir$Zeitspanne, geysir$Eruptionsdauer)
abline(lm(geysir$Eruptionsdauer ~ geysir$Zeitspanne))
abline(h = geysir.meanErupt)
abline(v = geysir.meanZeitsp)
cor(geysir$Zeitspanne, geysir$Eruptionsdauer)


mannfrau <- read.csv('../Daten/mannfrau.csv')
summary(mannfrau)
cor(mannfrau$groesse.frau, mannfrau$groesse.mann)
plot(mannfrau$groesse.mann, mannfrau$groesse.frau,
     xlab = "grösse Mann",
     ylab = "grösse Frau",
     col = "blue",
     pch = 20
)
lm(mannfrau$groesse.frau ~ mannfrau$groesse.mann)
abline(coef = c(110.444, 0.2884))
abline(coef = c(0, 1), col = "orange")


income <- read.table("../Daten/income.dat", header = TRUE)
cor(income$Educ, income$Income2005)
cor(income$AFQT, income$Income2005)
par(mfrow = c(2,1))
plot(income$Income2005, income$AFQT)
abline(coef = c(4.539e+01, 1.831e-04), col = "orange", type = "l")
plot(income$Income2005, income$Educ)
abline(coef = c(1.298e+01, 1.852e-05), col = "orange", type = "l")

# Aufgabe 4.2

# a)
t.x <- -10:10
t.x1 <- 0:10
t.y <- t.x^2
t.y1 <- t.x1^2

# b)
par(mfrow = c(1,2))
plot(t.x, t.y)
plot(t.x1, t.y1)

# c)
cor(t.x, t.y)
cor(t.x1, t.y1)


#Aufgabe 4.3
# a)
1 - 0.32 != 0.73

# b)
1 / choose(42, 6)

# c) obvious af...

# Aufgabe 4.4
# a)
wuerfel.rot <- 1:6
wuerfel.blau <- 1:6

# b)
1 / (length(wuerfel.rot) * length(wuerfel.blau))






