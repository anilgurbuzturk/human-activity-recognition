## Getting and Cleaning Data Course Project
##
## Loading required packages
library(dplyr)


## Downloading the Data Set
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

if(!file.exists("./data")){dir.create("./data")}

download.file(fileURL, "./data/uci_har.zip")

unzip("./data/uci_har.zip", exdir = "./data")


## Reading Files and Assigning Data Frames
activity_labels <- read.table(file = "./data/UCI HAR Dataset/activity_labels.txt")

features <- read.table(file = "./data/UCI HAR Dataset/features.txt")

subject_test <- read.table(file = "./data/UCI HAR Dataset/test/subject_test.txt")

x_test <- read.table(file = "./data/UCI HAR Dataset/test/X_test.txt")

y_test <- read.table(file = "./data/UCI HAR Dataset/test/Y_test.txt")

subject_train <- read.table(file = "./data/UCI HAR Dataset/train/subject_train.txt")

x_train <- read.table(file = "./data/UCI HAR Dataset/train/X_train.txt")

y_train <- read.table(file = "./data/UCI HAR Dataset/train/Y_train.txt")

colnames(activity_labels) <- c("class", "activity")

colnames(subject_test) <- c("subject")

colnames(x_test) <- features[, 2]

colnames(y_test) <- c("class")

colnames(subject_train) <- c("subject")

colnames(x_train) <- features[, 2]

colnames(y_train) <- c("class")


## You should create one R script called run_analysis. R that does the following
##
## 1. Merges the training and the test sets to create one data set.
merged_test <- cbind(y_test, subject_test, x_test)

merged_train <- cbind(y_train, subject_train, x_train)

merged_dataset <- rbind(merged_test, merged_train)

View(merged_dataset)


## 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
har_tidy <-
merged_dataset %>% 
  select(class, subject, contains("mean"), contains("std"))

str(har_tidy)


## 3. Uses descriptive activity names to name the activities in the data set
har_tidy$class <- activity_labels[har_tidy$class, 2]

colnames(har_tidy)[1] <- "activity"

View(har_tidy)


## 4. Appropriately labels the data set with descriptive variable names
names(har_tidy) <- gsub("Acc", "Accelerometer", names(har_tidy))

names(har_tidy) <- gsub("Gyro", "Gyroscope", names(har_tidy))

names(har_tidy) <- gsub("BodyBody", "Body", names(har_tidy))

names(har_tidy) <- gsub("Mag", "Magnitude", names(har_tidy))

names(har_tidy) <- gsub("^t", "Time", names(har_tidy))

names(har_tidy) <- gsub("^f", "Frequency", names(har_tidy))

names(har_tidy) <- gsub("tBody", "TimeBody", names(har_tidy))

names(har_tidy) <- gsub("-mean()", "Mean", names(har_tidy), ignore.case = TRUE)

names(har_tidy) <- gsub("-std()", "StandardDeviation", names(har_tidy), ignore.case = TRUE)

names(har_tidy) <- gsub("-freq()", "Frequency", names(har_tidy), ignore.case = TRUE)

names(har_tidy) <- gsub("angle", "Angle", names(har_tidy))

names(har_tidy) <- gsub("gravity", "Gravity", names(har_tidy))

names(har_tidy)

## 5. From the data set in step 4, creates a second, independent tidy data set 
## with the average of each variable for each activity and each subject
final_data <-
har_tidy %>%
  group_by(activity, subject) %>%
  summarise_all(funs(mean))

View(final_data)

str(final_data)


write.table(final_data, "./final_data.txt", row.name=FALSE)



