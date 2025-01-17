# biology432
#BIOL 432 GIT 
# BIOL 432 
#Assignment 1 - Version Control 

#set the seed 
set.seed(123)

#creating the species data - 5 shark species: 
spec_names <- c("Great White Shark", "Bull Shark", "Whale Shark", "Galapagos Shark", "Blacktip Shark")
species_vector <- sample(spec_names, size = 100, replace = T) #100 random samples 

#Generate fin width (limb)
fin_width <- abs(rnorm(100, mean = 5, sd = 10)) #100 data points, mean is 5 cm, sd is 1.5 cm

#add to data 
shark_data <- data.frame(Species = species_vector, fin_width = fin_width)
head(shark_data)#check

#limb length: 
fin_length <- abs(rnorm(100, mean = 150, sd = 40))#100 data points, mean is 150 cm, sd is 40 cm
shark_data$fin_length <- fin_length #add to data  

head (shark_data)#check

#observer names
observer_name <- c("Meredith", "Ben", "Olivia") #3 random names as observers
observer_name_vec <- sample(observer_name, size = 100, replace = T)

shark_data$observer_name <- observer_name_vec#add to data 
head (shark_data)#check


#convert to data frame using tibble in tidyverse: 

library(tidyverse)

shark_data <- tibble(
  Species = species_vector,
  Fin_Width = fin_width,
  Limb_Length = fin_length,
  Observer = observer_name_vec
)

#export as csv

write_csv(shark_data, "measurements.csv")
getwd()
