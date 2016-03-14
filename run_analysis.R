# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ #
# Getting and Cleaning Data Course Assignment #
# Program: run_analysis.R                     #
# Author:  Nicholas Corneau                   #
# Date:    March 13, 2016                     #
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ #

# -0. Load the required data sets-
# Set working directory to UCI HAR Dataset directory

if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/UCI HAR Dataset/",method="curl")
setwd("./data/UCI HAR Dataset/")

# Load required libraries
library(plyr)
library(dplyr)
library(data.table)

# Read in all the test and training data sets
subjectTest <- read.table("test/subject_test.txt", header = FALSE)
X_Test <- read.table("test/X_test.txt", header = FALSE)
y_Test <- read.table("test/y_test.txt", header = FALSE)
subjectTrain <- read.table("train/subject_train.txt", header = FALSE)
X_Train <- read.table("train/X_train.txt", header = FALSE)
y_Train <- read.table("train/y_train.txt", header = FALSE)

# Read in the feature column names and activity labels
featureNames <- read.table("features.txt")
activityLabels <- read.table("activity_labels.txt", header = FALSE)

# -1. Merge the training and the test sets to create one data set.-#
# Combine training and test sets
subject <- rbind(subjectTrain, subjectTest)
activity<- rbind(y_Train, y_Test)
features<- rbind(X_Train, X_Test)
# Tidy the data sets and merge them
colnames(features) <- t(featureNames[2]) #get names from featureNames
names(subject)<-c("subject")
names(activity)<- c("activity")
dataset <- cbind(features, activity, subject)

# -2. Extracts only the measurements on the mean and standard deviation for each measurement.-#
# Grep for index of columns with mean and std, then extract the indexed columns.
col_with_mean_std <- grep(".*mean.*|.*std.*", names(dataset))
extractedData <- dataset[,c(col_with_mean_std,562,563)]

# -3. Uses descriptive activity names to name the activities in the data set.-#
# Lower case the activity names and apply the activity labels to the extracted data
activityLabels[, 2] <- tolower(gsub("_", "", activityLabels[,2]))
for (i in 1:6){
  extractedData$activity[extractedData$activity == i] <- activityLabels[i,2]
}

# -4. Appropriately labels the data set with descriptive variable names.-#
names(extractedData)<-gsub("Gyro", "Gyroscope", names(extractedData))
names(extractedData)<-gsub("Mag", "Magnitude", names(extractedData))
names(extractedData)<-gsub("^t", "Time", names(extractedData))
names(extractedData)<-gsub("^f", "Frequency", names(extractedData))
names(extractedData)<-gsub("Acc", "Accelerometer", names(extractedData))

# -5. From the data set in step 4, creates a second, independent tidy data set with
#     the average of each variable for each activity and each subject. -#
tidy_dataset<-aggregate(. ~subject + activity, extractedData, mean)
tidy_dataset<-tidy_dataset[order(tidy_dataset$subject,tidy_dataset$activity),]
write.table(tidy_dataset, file = "tidydata.txt",row.name=FALSE,sep=",")

