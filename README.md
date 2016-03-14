Getting and Cleaning Data Course Project
=========================

Description
-----------
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Source of the data
------------------
The dataset can be obtained from here https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Dependencies
------------
The program requires the following packages to be loaded:
- plyr
- dplyr
- data.table

The Script
----------
The script `run_analysis.R` will perform the following:

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

Output: 
-------
The R script `run_analysis.R` returns the following dataset:
- `tidydata.txt`: aggregate of the extractedData where the mean is calculated by subject and activity.


