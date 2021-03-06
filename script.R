library(dplyr)

mecha_car <- read.csv('MechaCar_mpg.csv')

head(mecha_car)

# linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_car)

# Summary
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_car))


# Visualizations for Trip analysis

# summarize

coil_df <- read.csv('Suspension_Coil.csv')
total_summary <- coil_df %>% summarize(Mean_PSI=mean(PSI),
                                          Median_PSI=median(PSI),
                                          Var_PSI=var(PSI),
                                          Std_Dev_PSI=sd(PSI),
                                          Num_Coil=n(), .groups = 'keep') 

# group by
lot_summary <- coil_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),
                                                                    Median_PSI=median(PSI),
                                                                    Var_PSI=var(PSI),
                                                                    Std_Dev_PSI=sd(PSI),
                                                                    Num_Coil=n(), .groups = 'keep')   
lot_summary
# T test - mean 1500 psi - all lots
t.test(coil_df$PSI, mu=1500)

# Subset t-tests
t.test((subset(coil_df, Manufacturing_Lot=='Lot1'))$PSI, mu=1500)

t.test((subset(coil_df, Manufacturing_Lot=='Lot2'))$PSI, mu=1500)

t.test((subset(coil_df, Manufacturing_Lot=='Lot3'))$PSI, mu=1500)

