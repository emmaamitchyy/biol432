# BIOL 432 
#Assignment 1 - Version Control 

#load packages
library(dplyr)

#read the measurement csv:

data<-read.csv("measurements.csv")

#estimate volume - use cone volume formula V = (1/3)pi*r^2*h
# r is the fin width/2 
#h is the height (limb length)

data <- data %>%
  mutate(Volume = (1/3) * pi * (Fin_Width/2)^2 * Limb_Length)

head(data)

#csv
write.csv(data, "measurements.csv", row.names = F)


