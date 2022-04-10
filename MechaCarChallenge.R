# Deliverable 1
# Import Data
mechacar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
library(dplyr)

# Linear Regression to predicts the mpg of MechaCar prototypes
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mechacar_mpg )

# Use summary to get the r-squared value and p-value 
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mechacar_mpg ))

# p-value: 5.35e-11
# Multiple R-squared:  0.7149


# Deliverable 2
# Import Data
suspension_coil <- read.csv(file = "Suspension_Coil.csv", check.names = F, stringsAsFactors = F)

# Create a total summary dataframe
total_summary <- suspension_coil %>% summarise(Mean= mean(PSI), Median= median(PSI), Variance= var(PSI), SD= sd(PSI))

# Create a lot_summary dataframe using group_by() and summarize()
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarise(Mean= mean(PSI), Median= median(PSI), Variance= var(PSI), SD= sd(PSI))


# Deliverable 3
# Using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test(suspension_coil$PSI, mu=1500)

#using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.
Lot1 = subset(suspension_coil, Manufacturing_Lot == 'Lot1')
Lot2 = subset(suspension_coil, Manufacturing_Lot == 'Lot2')
Lot3 = subset(suspension_coil, Manufacturing_Lot == 'Lot3')

t.test(Lot1$PSI, mu=1500)
#p-value = 1

t.test(Lot2$PSI, mu=1500)
#p-value = 0.6072

t.test(Lot3$PSI, mu=1500)
#p-value = 0.04168