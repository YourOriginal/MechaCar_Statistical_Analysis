library(dplyr)
mecha_car <- read.csv(file='MechaCar_mpg.csv')

head(mecha_car)
# linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_car)