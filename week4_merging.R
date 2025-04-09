new_managers_data <- read.csv("C:/Users/PratishArya-STUDENT/Downloads/MoreData.csv")
new_managers_data

managers <- read.csv("C:/Users/PratishArya-STUDENT/Downloads/managers.csv")
managers

str(new_managers_data)

sum(is.na(new_managers_data))

converted_date <- as.Date(new_managers_data$Date, format = "%m/%d/%Y")
sum(is.na(converted_date))

new_managers_data$Date <- converted_date

attach(new_managers_data)
new_managers_data$AgeCat[Age <= 25] <- 'Young'
new_managers_data$AgeCat[Age > 25 & Age < 45] <- 'Middle Aged'
new_managers_data$AgeCat[Age >= 45 & is.na(Age)] <- 'Elder'


new_managers_data$X <- NA
new_managers_data$'Answer.total' <- NA
new_managers_data$'mean.value' <- NA
detach(new_managers_data)
str(new_managers_data)

new_managers_data_1 <- subset(new_managers_data, select=c('X', 'Date', 'Country','Gender', 'Age' ,'Q1','Q2','Q3','Q4','Q5',
                                                          'AgeCat','Answer.total','mean.value'))

str(new_managers_data_1)




new_managers_data_1$'Answer.total' <- rowSums(new_managers_data_1[,c(6:10)], na.rm = FALSE)
new_managers_data_1$mean.value <- rowMeans(new_managers_data_1[,c(6:10)], na.rm= FALSE)


new_managers_data_1<- new_managers_data_1[,-1]
new_managers_data_1
managers <- managers[,-1]
names(managers)
names(new_managers_data_1)

converted_date <- as.Date(managers$Date, format = c("%Y-%d-%m",
                                                    "%m/%d/%Y",
                                                    "%Y-%d-%m"))

converted_date

managers$Date <- converted_date

merged_data <- rbind(managers, new_managers_data_1)
View(merged_data)
str(merged_data)
class(merged_data$Date)


merged_data$AgeCat <- factor(merged_data$AgeCat, order =TRUE, levels = c('Young', 'Middle Aged', 'Elder'))
class(merged_data$AgeCat)

attach(merged_data)
View(merged_data[order(AgeCat, Age, Gender,),])

?merge
