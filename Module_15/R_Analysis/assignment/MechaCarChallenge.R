# MechaCar Statistical Analysis

#Deliverable 1 
demo_table <- read.csv(file='MechaCar_mpg.csv')

# Loading packages
library(tidyverse)
library(dplyr)

# --- Linear regression on MechaCar_mpg data
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=demo_table)

# Generating summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=demo_table))

#Deliverable 2
demo_table2 <- read.csv(file='Suspension_Coil.csv')

# Retrieving stats values for PSI in Suspension_Coil data 
total_summary <- summarize(demo_table2, Mean=mean(PSI), Median=median(PSI), Var=var(PSI) , StdDev=sd(PSI) , .groups = "keep")

# Summary data by Manufacturing Lot
lot_summary <- demo_table2 %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median_PSI=median(PSI), Var=var(PSI) , StdDev=sd(PSI) , .groups = "keep")

#Deliverable 3

# t-test to check if the PSI across all manufacturing lots is statistically different from the population mean
t.test(demo_table2$PSI,mu=1500)

# Determining if the PSI for each manufacturing lot is statistically different from the population mean
# filtering and assigning manufacturing lots
lot1 <- subset(demo_table2, Manufacturing_Lot == "Lot1")
lot2 <- subset(demo_table2, Manufacturing_Lot == "Lot2")
lot3 <- subset(demo_table2, Manufacturing_Lot == "Lot3")

# Lot 1 Sample t-test
t.test(lot1$PSI,mu=1500)

# Lot 2 Sample t-test
t.test(lot2$PSI,mu=1500)

# Lot 3 Sample t-test
t.test(lot3$PSI,mu=1500)