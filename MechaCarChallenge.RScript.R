library(dplyr)
library(tidyverse)
#read the csv
Mecha.df <- read.csv(file = "MechaCar_mpg.csv")
#linear regression of the six columns in the MechaCar csv
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = Mecha.df)
#getting p values and r-squared
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = Mecha.df))
#get the graph for slope for ground clearance and vehicle length
ggplot(Mecha.df,aes(x=vehicle_length,y=mpg))+ geom_point() + geom_smooth(method = "lm", se= FALSE)
ggplot(Mecha.df,aes(x=ground_clearance,y=mpg))+ geom_point() +geom_smooth(method = "lm", se=FALSE)

#read the suspension_coil.csv
Coil <- read.csv(file = "Suspension_Coil.csv")
#Create a dataframe summary for the stats of the csv
total_summary.df<- Coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), Standard_Dif = sd(PSI), .groups='keep')
#using group_by, get summaries of the manufacturing lots
lot_summary.df<- Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), Standard_Dif = sd(PSI), Vehicles = n(), .groups='keep')

#test the data for hypothesis if statistically different across population
t.test((Coil$PSI), mu=1500)#fail to reject null p = .06028, null gets rejected at p<.05
#create the subsets by getting them from lot_summary/Manufacturing_Lot
LOT1 <- Coil %>% filter(Manufacturing_Lot == "Lot1")
LOT2 <- Coil %>% filter(Manufacturing_Lot == "Lot2")
LOT3 <- Coil %>% filter(Manufacturing_Lot == "Lot3")
#test the subsets
t.test(LOT1$PSI,mu=1500)#fail to reject null p = 1
t.test(LOT2$PSI,mu=1500)#fail to reject null p = .6072
t.test(LOT3$PSI,mu=1500)#reject null p = .04168
