library(dplyr)
mechacar_mpg <- read.csv("MechaCar_mpg.csv", check.names = F, stringsAsFactor = F) # load CSV into working directory
head(mechacar_mpg)# show head of mechacar_mpg
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar_mpg) #linear regression all columns on CSV 
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar_mpg)) 
suspension_coil <- read.csv("Suspension_Coil.csv", check.names = F, stringsAsFactors = F) # load CSV into working directory
total_summary <-suspension_coil %>% summarise(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = "drop")#created a summary table for the PSI column
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot)%>% summarise(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = "keep")
