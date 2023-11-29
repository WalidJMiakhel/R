# Loading necessary libraries

library(leaflet)  # For creating interactive maps
library(tidyverse)  # Data cleaning, manipulation, and visualization tools
library(janitor)  # Cleaning variable names
library(DT)  # Creating interactive data tables


# Reading CSV file containing IT school data
raw_data <- read.csv("./input/schools.csv", sep = ",", head = TRUE)


# Creating a vector of website names and their corresponding links
name_website <- c(
  '<a href="https://www.codeacademyberlin.com/">Code Academy Berlin</a>',
  '<a href="https://datascienceretreat.com/">Data Science Retreat</a>',
  '<a href="https://stackfuel.com/">Stackfuel</a>',
  '<a href="https://www.lewagon.com/de/berlin">Le Wagon Berlin</a>',
  '<a href="https://www.wbscodingschool.com/campus-berlin/">WBS Coding School</a>',
  '<a href="https://www.wbstraining.de/weiterbildung-berlin-mitte/">WBS Training</a>',
  '<a href="https://www.spiced-academy.com/en">Spiced Academy</a>',
  '<a href="https://www.ironhack.com/de/en">Ironhack</a>',
  '<a href="https://careerfoundry.com/">Career Foundary</a>'
)


# changing 'Name' data with name_website which contains hyperlinked website names
raw_data$Name <- name_website



# Cleaning and transform raw_data and name it data
data <- raw_data %>%
  
              # Converting variable names to lowercase and remove spaces
              clean_names(case = "snake") %>%   
            
              # Spliting 'course_offer' into 'course_offer' and 'course_type' columns
              separate(course_offer, into = c("course_offer", "course_type"), sep = ", ") %>%   
              
              # Spliting 'address' into 'address' and 'telephone_number' columns
              separate(address, into = c("address", "telephone_number"), sep = ", ") %>%  
              
              # Spliting 'long_lat' into 'lat' and 'long' columns
              separate(long_lat, into = c("lat", "long"), sep = ", ") %>%   
            
              # Converting 'lat' and 'long' to numeric
              mutate_at(vars(lat, long), funs(as.numeric(as.character(as.factor(gsub("\\,", ".", .))))))  


              
              
# create a leaflet map
map <- leaflet(data = data,width ="100%") %>% 
            # Adding base tiles to the map for geographical reference.
            addTiles() %>%
            # adding markers based on long/lat columns
            addMarkers(lng = ~long, lat = ~lat, popup = ~name)
              
# display the map
map
