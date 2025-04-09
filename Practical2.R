#load dataset
managers_data <- read.csv("C:/Users/MohammedFarhanSahebe/Downloads/managers.csv")
View(managers_data)

#find the null values
sum(is.na(managers_data))

install.packages("mice")
library(mice)
windows(20, 10)
md.pattern(managers_data)
managers_data


#use VIM package to show missing values
install.packages("VIM")
library(VIM)
windows(20, 10)
missing_values <- aggr(managers_data, prop = FALSE, number = TRUE)
#Show summary of the contents of missing_values
summary(missing_values)


#check the data type
class(managers_data$Date)

#Convert the data type from Character to Date
managers_data$Date <- as.Date(managers_data$Date, format = "%d-%M-%Y", "%m/%d/%Y", "%Y-%d-%m")

#check the data type
class(managers_data$Date)


#Different way
attach(managers_data)
Date
class(Date)

converted_date <- as.Date(Date, format = c("%Y-%d-%m", "%m/%d/%Y", "%Y-%d-%m"))

converted_date
managers_data$Date <- converted_date
managers_data$Date

#Examine the structure of managers date field
#select records from the managers data frame between 15-10-18 and 01-11-18
startdate <- as.Date("2018-10-15")
endDate <- as.Date("2018-11-01")
new_data <- managers_data[managers_data$Date >= startdate & managers_data$Date <= endDate,]
new_data


#Drop the Q3 and Q4 attributes(variables)from the data frame
include_list1 <- managers_data[,8:9]
include_list1

include_list2 <- managers_data[,c(1:7,10:13)]
include_list2

#This keeps everything apart from the 2 values 'Q3' and 'Q4'
new_data <- managers_data[,c(-8, -9)]
new_data

#different way
new_dropped <- subset(managers_data, select = c(-Q3,-Q4))
new_dropped

#Select a random sample of 3 records from manages_data
my_sample <- managers_data[sample(3:nrow(managers_data), 3, replace = FALSE),]
my_sample

#Extract 10 random samples from managers_data
my_samplee

#save the random sample as a csv file
#called random sample.csv
write.csv(my_samplee, file = "random sample.csv")

#Sort the managers data frame by Age
attach(managers_data)
new_dataa <- managers_data[order(Age),]
new_dataa

#sort managers data frame by gender and then by age within each gender
new_datta <- managers_data[order(Gender, Age),]
new_datta
detach(managers_data)
