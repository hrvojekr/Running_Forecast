library(lubridate)

# First Forecaste Method

# e - coefficient
# tl - time long distance
# ts - time short distance
# dl - duration long distance
# ds - duration short distance
# K - 1 km time

# last official race and last marathon 

tl <- 11699 # in secounds 3:14:59 (Wien Marathon Garmin Connect)
#tl <- 11259 # in secounds 3:07:39 (Ljubljana 2022.)
ts <- 1096 # in secounds 18:16 (Erste Night Run)
dl <- 42.4 # in km 42.40
ds <- 4.93 # in km 4.93

e <- log(tl/ts)/log(dl/ds)

K <- tl/(dl**e)

# Ljubljana marathon has 42.41 according to my Garmin Connect

d <- 42.41

t <- K * d ** e

seconds_to_period(t)

# Secound Forecaste Method

# t1 - reference time in secounds
# d1 - distance of reference time in km
# d2 - distance of forcasted time in km
# k - fatigue coefficient (between 1.06 and 1.08, closer to 1.06 means that you have less fatigue)

t1 <- 1096 # in secounds 18:16 (Erste Night Run)
d1 <- 4.93 # in km 4.93
d2 <- 42.4 # in km 42.40
k <- 1.07

t2 <- t1 * (d2/d1)**k
seconds_to_period(t2)


