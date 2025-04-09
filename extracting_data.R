#load dataset
managers_data <- read.csv("C:/Users/MohammedFarhanSahebe/Downloads/managers.csv")
View(managers_data)

#this command shows all attributes where Q3 or Q4 are contained
#Te ! operator reverses this choice
include_list <- names(managers_data) %in% c("Q3", "Q4")
include_list
 
#this list can be used to extract this data
new_data <- managers_data[(include_list)]
new_data

#Extract data from gender to q5 and save as new_data_1
include_list <- names(managers_data) %in% c("Gender", "Age","Q1", "Q2", "Q3", "Q4", "Q5")
include_list

new_data_1 <- managers_data[(include_list)]
new_data_1


#Extract data from gender to q5 and save as new_data_1
include_list <- names(managers_data) %in% c(4:10)
include_list

new_data_2 <- managers_data[(include_list)]
new_data_2

#using the subset function
#to extract all records from 'managers' where age > 35 or age < 24.
#only select the listed attributes 'Q1', 'Q2', 'Q3', 'Q4'
attach(managers_data)
new_data_3 <- subset(managers_data, Age >= 35 | Age < 24, select = c("Q1","Q2","Q3","Q4"))
new_data_3


#How would we select a subset of managers
#called new_managers where gender = M
#and age > 25. show all attributes between 'Gender' and 'Q4' only

attach(managers_data)
new_managers <- subset(managers_data, Gender == 'M' & Age > 24, select = c(4,9))
new_managers

#Selecting a random sample from my_data my_sample <-

my_sample <- managers_data[sample(2:nrow(managers_data), 4, replace = FALSE),]
my_sample

my_sample <- managers_data[sample(1:nrow(managers_data), 10,replace = TRUE),]
my_sample






