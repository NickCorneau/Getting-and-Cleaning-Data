---
title: "CodeBook.md"
author: "Nicholas Corneau"
date: "March 13, 2016"
output: html_document
---

# CodeBook.md

# run_analysis.R 

* Set working directory to UCI HAR Dataset directory
* Load required libraries
* Read in all the test and training data sets
* Read in the feature column names and activity labels
* Combine training and test sets
* Tidy the data sets and merge them
* Grep for index of columns with mean and std, then extract the indexed columns.
* Lower case the activity names and apply the activity labels to the extracted data
* Appropriately labels the data set with descriptive variable names
* creates a second, independent tidy data set with the average of each variable for each activity and each subject
* saves the tidy dataset into tidy_dataset.csv

# tidydata.csv
contains 180 rows (including header) and 479 columns (including enumeration column) in a default csv format

variables:
*  id	
*  activity	
*  tBodyAcc.std...X_mean	
*  tBodyAcc.std...Y_mean	
*  tBodyAcc.std...Z_mean	
*  tGravityAcc.std...X_mean	
*  tGravityAcc.std...Y_mean	
*  tGravityAcc.std...Z_mean	
*  tBodyAccJerk.std...X_mean	
*  tBodyAccJerk.std...Y_mean	
*  tBodyAccJerk.std...Z_mean	
*  tBodyGyro.std...X_mean	
*  tBodyGyro.std...Y_mean	
*  tBodyGyro.std...Z_mean	
*  tBodyGyroJerk.std...X_mean	
*  tBodyGyroJerk.std...Y_mean	
*  tBodyGyroJerk.std...Z_mean	
*  tBodyAccMag.std.._mean	
*  tGravityAccMag.std.._mean	
*  tBodyAccJerkMag.std.._mean	
*  tBodyGyroMag.std.._mean	
*  tBodyGyroJerkMag.std.._mean	
*  fBodyAcc.std...X_mean	
*  fBodyAcc.std...Y_mean	
*  fBodyAcc.std...Z_mean	
*  fBodyAccJerk.std...X_mean	
*  fBodyAccJerk.std...Y_mean	
*  fBodyAccJerk.std...Z_mean	
*  fBodyGyro.std...X_mean	
*  fBodyGyro.std...Y_mean	
*  fBodyGyro.std...Z_mean	
*  fBodyAccMag.std.._mean	
*  fBodyBodyAccJerkMag.std.._mean	
*  fBodyBodyGyroMag.std.._mean	
*  fBodyBodyGyroJerkMag.std.._mean	
*  tBodyAcc.mean...X_mean	
*  tBodyAcc.mean...Y_mean	
*  tBodyAcc.mean...Z_mean	
*  tGravityAcc.mean...X_mean	
*  tGravityAcc.mean...Y_mean	
*  tGravityAcc.mean...Z_mean	
*  tBodyAccJerk.mean...X_mean	
*  tBodyAccJerk.mean...Y_mean	
*  tBodyAccJerk.mean...Z_mean	
*  tBodyGyro.mean...X_mean	
*  tBodyGyro.mean...Y_mean	
*  tBodyGyro.mean...Z_mean	
*  tBodyGyroJerk.mean...X_mean	
*  tBodyGyroJerk.mean...Y_mean	
*  tBodyGyroJerk.mean...Z_mean	
*  tBodyAccMag.mean.._mean	
*  tGravityAccMag.mean.._mean	
*  tBodyAccJerkMag.mean.._mean	
*  tBodyGyroMag.mean.._mean	
*  tBodyGyroJerkMag.mean.._mean	
*  fBodyAcc.mean...X_mean	
*  fBodyAcc.mean...Y_mean	
*  fBodyAcc.mean...Z_mean	
*  fBodyAcc.meanFreq...X_mean	
*  fBodyAcc.meanFreq...Y_mean	
*  fBodyAcc.meanFreq...Z_mean	
*  fBodyAccJerk.mean...X_mean	
*  fBodyAccJerk.mean...Y_mean	
*  fBodyAccJerk.mean...Z_mean	
*  fBodyAccJerk.meanFreq...X_mean	
*  fBodyAccJerk.meanFreq...Y_mean	
*  fBodyAccJerk.meanFreq...Z_mean	
*  fBodyGyro.mean...X_mean	
*  fBodyGyro.mean...Y_mean	
*  fBodyGyro.mean...Z_mean	
*  fBodyGyro.meanFreq...X_mean	
*  fBodyGyro.meanFreq...Y_mean	
*  fBodyGyro.meanFreq...Z_mean	
*  fBodyAccMag.mean.._mean	
*  fBodyAccMag.meanFreq.._mean	
*  fBodyBodyAccJerkMag.mean.._mean	
*  fBodyBodyAccJerkMag.meanFreq.._mean	
*  fBodyBodyGyroMag.mean.._mean	
*  fBodyBodyGyroMag.meanFreq.._mean	
*  fBodyBodyGyroJerkMag.mean.._mean	
*  fBodyBodyGyroJerkMag.meanFreq.._mean