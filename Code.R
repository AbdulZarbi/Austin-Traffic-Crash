# Setting WD
setwd("/Users/zarbi/Documents/GitHub/Austin_Traffic_Crash")
getwd()

#load the dataset 
library(readr)
Austin_Crash <- read.csv("~/Downloads/AustinTrafficCrash.csv")

#loading required packages
library(tidyverse)
library(lubridate)

#Basic Dataset Overview
View(Austin_Crash)
colnames(Austin_Crash)
head(Austin_Crash)
tail(Austin_Crash)
print(head(Austin_Crash,2))

# Data Structure analysis 
print("data types:")
print(str(Austin_Crash))
print("\ summary statistic for key numeric columns:")
colnames(Austin_Crash)
print(summary(Austin_Crash[ c("crash_speed_limit", "tot_injry_cnt",  "death_cnt" , "units_involved" , "Estimated.Total.Comprehensive.Cost")]))

glimpse(Austin_Crash)

#datetime features 


Austin_Crash$crash

Austin_crash_clean <- Austin_Crash |>
      mutate(
            crash_datetime = parse_datetime(paste(Austin_Crash, Crash.timestamp), format = "%Y-%m-%d %H:%M:%S"),
            hour = hour(crash_datetime), 
            weekday = wday(crash_datetime, lable = TRUE, abbr = FALSE), 
            severity = factor(crash_severity_id, level = c(1,2,3,4,0),
                              labels = c("Fatal", "Incapacitating", "Non-Incapacitating", "Possible Injury", "Unknown"))
      ) |>
      filter(!is.na(latitude), !is.na(longitude))


boxplot(death_cnt ~ Crash.ID, data = Austin_Crash, col = "red")

with(Austin_Crash, plot(latitude, bicycle_death_count, col = point ))

?hist

hist(Austin_Crash$Estimated.Total.Comprehensive.Cost,
     main = "Distribution of Estimated Total comprehensive Cost", 
     xlab = "Estimated Total Comperhensive Cost (USD)",
     ylab = "Freuency", 
     col = "blue",
     border = "white")

plot(Austin_Crash$crash_speed_limit, Austin_Crash$Estimated.Total.Comprehensive.Cost,
     main = "Crash Speed Limit vs. Estimated Total Comprehensive Cost",
     xlab = "Crash Speed Limit (mph)",
     ylab = "Estimated Total Comprehensive Cost (USD)",
     pch = 19,
     col = "red",
     )
example(points)

