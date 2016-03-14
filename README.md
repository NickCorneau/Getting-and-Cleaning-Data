Getting-and-cleaning-data
=========================

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


