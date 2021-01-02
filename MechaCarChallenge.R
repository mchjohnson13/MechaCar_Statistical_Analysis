library(dplyr)

mpg_data <- read.csv("MechaCar_mpg.csv") # import mpg file

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mpg_data) # create a multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mpg_data)) # summarize the linear regression model


suspension_data <- read.csv("Suspension_Coil.csv") # import suspension file

total_summary <- suspension_data %>% summarize(Mean=mean(PSI),Median=median(PSI), Variance=var(PSI), SD=sd(PSI)) #create overall summary table
lot_summary <- suspension_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI), Variance=var(PSI), SD=sd(PSI)) #create lot summary table


t.test(suspension_data$PSI)