# Setting WD
setwd("/Users/zarbi/Documents/GitHub/Austin_Traffic_Crash")
getwd()

#load the dataset 
library(readr)
Austin_Crash <- read.csv("~/Downloads/AustinTrafficCrash.csv")

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
print(summary(Austin_Crash[ c("crash_speed_limit", "tot_injry_cnt",  "death_cnt" , "units_involved" , "Estimated.Total.Comprehensive.Cost")  ]))





