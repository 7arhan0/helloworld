#Q1. load the dataframe

new_managers_data <- read.csv("C:\\Users\\IbukunoluwaAlade-STU\\OneDrive - Atlantic TU\\Documents\\data_msc\\MoreData.csv")
View(new_managers_data)

managers_data <- read.csv("C:\\Users\\IbukunoluwaAlade-STU\\OneDrive - Atlantic TU\\Documents\\data_msc\\managers.csv")
View(managers_data)

#Q2. Show the structure of this data

str(new_managers_data)

str(managers_data)

#show headers of both datasets
names(new_managers_data)
names(managers_data)

new_managers_data1 <- new_managers_data[, c(6,3,7,4,8:12)]
View(new_managers_data1)

new_managers_data1$AgeCat <- ifelse(new_managers_data1$Age <= 25, "Young",
                                ifelse(new_managers_data1$Age >= 26 & new_managers_data1$Age <= 44, "Middle aged",
                                       ifelse(new_managers_data1$Age > 44, "Elder", NA)))
View(new_managers_data1)




new_managers_data1$Answer.total <- rowSums(new_managers_data1[5:9])
View(new_managers_data1)

new_managers_data1$mean.value <- rowMeans(new_managers_data1[5:9])
View(new_managers_data1)

managers_data1 <- managers_data[, c(2:13)]
View(managers_data1)

#date conversion

converted_date <- as.Date(managers_data1$Date,  format= c( "%Y-%d-%m", "%m/%d/%Y",  "%Y-%d-%m"))
converted_date
class(converted_date)
managers_data1$Date <- converted_date
class(managers_data1$Date)

converted_date2 <- as.Date(new_managers_data1$Date,  format= c("%m/%d/%Y"))
converted_date2
class(converted_date2)
new_managers_data1$Date <- converted_date2
class(new_managers_data1$Date)


merged_manager_data <- rbind(managers_data1,new_managers_data1)
View(merged_manager_data)
str(merged_manager_data)
head(merged_manager_data)



help("rbind")
help("as.Date")
help("format")
#Below, i can create an empty column and set it as NA, then do any computations
# new_managers_data1$AgeCat2 <- NA
# 
# new_managers_data1$Age <=25
# new_managers_data1$AgeCat[new_managers_data1$Age <=25] <- "Young"
# new_managers_data1$AgeCat[new_managers_data1$Age >= 26 & new_managers_data1$Age<= 44]<- 'Middle Aged'
# new_managers_data1$AgeCat[new_managers_data1$Age >=45] <- "Elderly"
# new_managers_data1$AgeCat[is.na(new_managers_data1$Age)]<- "elder"
# new_managers_data1


#changing column names

# names(managers_data)[13] <- "Jag"
# managers_data
# 
# names(managers_data)[13] <- "mean.value"
# managers_data


