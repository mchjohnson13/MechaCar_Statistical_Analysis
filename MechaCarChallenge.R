library(dplyr)

mpg_data <- read.csv("./Data/MechaCar_mpg.csv") # import mpg file

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mpg_data) # create a multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mpg_data)) # summarize the linear regression model


suspension_data <- read.csv("./Data/Suspension_Coil.csv") # import suspension file

total_summary <- suspension_data %>% summarize(Mean=mean(PSI),Median=median(PSI), Variance=var(PSI), SD=sd(PSI)) #create overall summary table
lot_summary <- suspension_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI), Variance=var(PSI), SD=sd(PSI)) #create lot summary table

overall_PSI <- t.test(suspension_data$PSI,mu=1500)

lot1_PSI <- t.test(subset(suspension_data$PSI, suspension_data$Manufacturing_Lot == 'Lot1'),mu=1500)

lot2_PSI <- t.test(subset(suspension_data$PSI, suspension_data$Manufacturing_Lot == 'Lot2'),mu=1500)

lot3_PSI <- t.test(subset(suspension_data$PSI, suspension_data$Manufacturing_Lot == 'Lot3'),mu=1500)

overall_PSI
lot1_PSI
lot2_PSI
lot3_PSI
