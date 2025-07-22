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
#