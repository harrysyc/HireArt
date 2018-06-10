#The team wants to find the month they're 
#likely to contact the most clients, so they can schedule
#a product upgrade announcement. Which month does the team 
#tend to contact the greatest percentage of its clients?

##load data
mydata <- read.csv("~/Desktop/hireart/HireArt - Data Analyst Exercise 10.12.17 - Sheet1.csv", stringsAsFactors=FALSE)
View(mydata)
###check data structure
str(mydata)

###make one column as date
mydata$Date.of.Contact <- as.Date(mydata$Date.of.Contact)
###use lubridate library
library(lubridate)
####extract month from the data
mydata$Month <-  month(as.POSIXlt(mydata$Date.of.Contact, format="%y/%m/%d"))
###check the summary table
table(mydata$Month)
####