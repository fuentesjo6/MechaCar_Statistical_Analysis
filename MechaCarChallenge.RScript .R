library(dplyr)
mechacar_mpg <- read.csv("MechaCar_mpg.csv", check.names = F, stringsAsFactor = F) # load CSV into working directory
head(mechacar_mpg)# show head of mechacar_mpg
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar_mpg) #linear regression all columns on CSV 
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar_mpg)) 
suspension_coil <- read.csv("Suspension_Coil.csv", check.names = F, stringsAsFactors = F) # load CSV into working directory
total_summary <-suspension_coil %>% summarise(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = "drop")#created a summary table for the PSI column
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot)%>% summarise(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = "keep")
all_lots <- t.test(suspension_coil$PSI, mu = 1500) # t.test  for all the Lots compared to the the population mean of 1500 PSI
lot_1 = subset(suspension_coil, Manufacturing_Lot == 'Lot1')
lot_2 = subset(suspension_coil, Manufacturing_Lot == 'Lot2')
lot_3 = subset(suspension_coil, Manufacturing_Lot == 'Lot3')
lot_1_t.test <- t.test(lot_1[['PSI']], Mean = 1500)
lot_2_t.test <- t.test(lot_2[['PSI']], Mean = 1500)
lot_3_t.test <- t.test(lot_3[['PSI']], Mean = 1500)
