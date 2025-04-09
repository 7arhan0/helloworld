#load dataset
managers_data <- read.csv("C:/Users/MohammedFarhanSahebe/Downloads/managers.csv")
View(managers_data)

managers_data

# Use na.omit() to store any full rows into new_data data frame
new_data <- na.omit(managers_data)
View(new_data)

# Use complete.cases() to show all complete rows –store in complete_data and missing_data accordingly.
complete_data <- complete.cases(managers_data)
complete_data

complete_data1 <- managers_data[complete.cases(managers_data),]
complete_data1

missing_data <- managers_data[!complete.cases(managers_data),]
missing_data

# Use nrow() to show a total complete rows

complete_data1 <- managers_data[complete.cases(managers_data),]
complete_data1
nrow(complete_data1) # show number rows in a data set
dim(complete_data1) # show rows and columns in a data set. Row first output and column second output

#sum of all missing values in the age attribute

is.na(managers_data$Age)
sum(is.na(managers_data$Age))

#find the mean of missing values from the age attribute
attach(managers_data)  # with this, while working with other columns no need to put the dollar sign
mean(is.na(Age))
detach(managers_data)

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



