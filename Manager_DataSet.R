Manager <- c(1:5)
Manager
Date <- c('10/15/18','01/11/18','10/21/18','10/28/18','05/01/18')
Date
Country <- c('US','US','IRL','IRL','IRL')
Country
Gender <- c('M','F','F','M','F')
Gender
Age <- c(32,45,25,39,99)
Age
q1 <- c(5,3,3,3,2)
q1
q2 <- c(4,5,5,3,2)
q2
q3 <- c(5,2,5,4,1)
q3
q4 <- c(5,5,5,NA,2)
q4
q5 <- c(5,5,2,NA,1)
q5

managers_data <-data.frame(Manager,Date,Country,Gender,Age,q1,q2,q3,q4,q5)
View(managers_data)

#Show the first 5 rows of the data table
managers_data[1:5,]

managers_data[!complete.cases(managers_data),] 


#Logical Structure of the data frame
str(managers_data)


managers_data$Age[managers_data$Manager==5] <- NA


managers_data$Age[managers_data$Age ==99] <- NA
managers_data

#drop Manager column

managers_data_1 <- subset(managers_data, select = -Manager)
managers_data_1

managers_data_2 <- subset(managers_data, select = -1)
managers_data_2

managers_data <- managers_data[,c(2:10)]
managers_data


#`Create a new attribute called Agecat and set values`

managers_data$AgeCat <- c(1,2,3,4,5)
managers_data

managers_data <- managers_data[,c(1:9)]
managers_data


#in AgeCat to the following if true:
# if Age <= 25 = Young
# >= 26 & <=44 = Middle Aged
# >= 45 = Elderly
# We will laso record age NA to Elder

managers_data$AgeCat[managers_data$Age <= 25] <- "Young"
managers_data$AgeCat[managers_data$Age >= 45] <- "Elderly"
managers_data$AgeCat[managers_data$Age >= 26 & managers_data$Age <= 44] <- "Middle Aged"


class(managers_data$age_cat)
#Recode the age_cat variable so that it is ordinal and factored

# Recode age_cat as an ordered factor
managers_data$age_cat <- factor(managers_data$age_cat, ordered = TRUE, levels = c("Young", "Middle aged", "Elder"))
class(managers_data$age_cat)
# Check the structure of the data to confirm the recoding
str(managers_data)

# summary column

#create a new columns and sum columns
managers_data$row_summary <- rowSums(managers_data[,c("q1", "q2", "q3", "q4", "q5")]) # (managers_data[5:9]) this would also work

View(managers_data)

#option2
managers_data$row_summary2 <- managers_data$q1 + managers_data$q2 + managers_data$q3 + managers_data$q4 + managers_data$q5
View(managers_data)

#option3
summary_col <- managers_data$q1 + managers_data$q2 + managers_data$q3 + managers_data$q4 + managers_data$q5
summary_col

managers_data <- data.frame(managers_data, summary_col)
View(managers_data)

#create a new columns and show the mean columns
managers_data$means_summary <- rowMeans(managers_data[5:9])
View(managers_data)

# to change the name of the column name "mean summary" to 'mean_value'
names(managers_data)[13] <- "mean value"
View(managers_data)

names(managers_data)[14] <- "Answer Total"
View(managers_data)

#summing columns
column_summary <- colSums(managers_data[,c(4:9,11,13)], na.rm =  TRUE)
column_summary

# changing the date column to proper date structure
managers_data$Date <- as.Date(managers_data$Date)
str(managers_data$Date)

