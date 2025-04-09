Subject <- c(1:7)
Subject
Gender <- c('Male','Male','Male','NA','Female','Female','Female')
Gender
Age <- c(23,34,32,54,65,45,35)
Age
Weight <- c(67.5,NA,63.7,56.8,89.9,87.5,77.5)
Weight

# create a dataFrame
Trial <-data.frame(Subject,Gender,Age,Weight)
View(Trial)

Trial[4,3]
Trial[,3]
Trial[7,2]
Trial[1,]

Trial$Subject
Trial$Gender
Trial$Age
Trial$Weight

#The setnames() within the data.table library can be very useful to change the name of column
install.packages("data.table")
library(data.table)
setnames(Trial, old = 'Subject',new = 'Participant')
View(Trial)

#update the value


#Find the missing values
is.na(Gender)

Trial[!complete.cases(Trial),]

Trial[,!complete.cases(Trial)]

Trial[complete.cases(Trial),]

Trial[,complete.cases(Trial)]

#Set weight of participant 2 to 65
Trial$Weight[Trial$Participant==2] <- 65



#set gender of participant 4 to 'Female'

Trial$Gender[Trial$Participant==4] <- 'Female'
