---
title: "CodeBook.md"
author: "Nicholas Corneau"
date: "March 13, 2016"
output: text file
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
contains 180 rows (including header) and 81 columns (including enumeration column) in a default csv format

variables:

 [1] "subject"                                               
 [2] "activity"                                              
 [3] "TimeBodyAccelerometer-mean()-X"                        
 [4] "TimeBodyAccelerometer-mean()-Y"                        
 [5] "TimeBodyAccelerometer-mean()-Z"                        
 [6] "TimeBodyAccelerometer-std()-X"                         
 [7] "TimeBodyAccelerometer-std()-Y"                         
 [8] "TimeBodyAccelerometer-std()-Z"                         
 [9] "TimeGravityAccelerometer-mean()-X"                     
[10] "TimeGravityAccelerometer-mean()-Y"                     
[11] "TimeGravityAccelerometer-mean()-Z"                     
[12] "TimeGravityAccelerometer-std()-X"                      
[13] "TimeGravityAccelerometer-std()-Y"                      
[14] "TimeGravityAccelerometer-std()-Z"                      
[15] "TimeBodyAccelerometerJerk-mean()-X"                    
[16] "TimeBodyAccelerometerJerk-mean()-Y"                    
[17] "TimeBodyAccelerometerJerk-mean()-Z"                    
[18] "TimeBodyAccelerometerJerk-std()-X"                     
[19] "TimeBodyAccelerometerJerk-std()-Y"                     
[20] "TimeBodyAccelerometerJerk-std()-Z"                     
[21] "TimeBodyGyroscope-mean()-X"                            
[22] "TimeBodyGyroscope-mean()-Y"                            
[23] "TimeBodyGyroscope-mean()-Z"                            
[24] "TimeBodyGyroscope-std()-X"                             
[25] "TimeBodyGyroscope-std()-Y"                             
[26] "TimeBodyGyroscope-std()-Z"                             
[27] "TimeBodyGyroscopeJerk-mean()-X"                        
[28] "TimeBodyGyroscopeJerk-mean()-Y"                        
[29] "TimeBodyGyroscopeJerk-mean()-Z"                        
[30] "TimeBodyGyroscopeJerk-std()-X"                         
[31] "TimeBodyGyroscopeJerk-std()-Y"                         
[32] "TimeBodyGyroscopeJerk-std()-Z"                         
[33] "TimeBodyAccelerometerMagnitude-mean()"                 
[34] "TimeBodyAccelerometerMagnitude-std()"                  
[35] "TimeGravityAccelerometerMagnitude-mean()"              
[36] "TimeGravityAccelerometerMagnitude-std()"               
[37] "TimeBodyAccelerometerJerkMagnitude-mean()"             
[38] "TimeBodyAccelerometerJerkMagnitude-std()"              
[39] "TimeBodyGyroscopeMagnitude-mean()"                     
[40] "TimeBodyGyroscopeMagnitude-std()"                      
[41] "TimeBodyGyroscopeJerkMagnitude-mean()"                 
[42] "TimeBodyGyroscopeJerkMagnitude-std()"                  
[43] "FrequencyBodyAccelerometer-mean()-X"                   
[44] "FrequencyBodyAccelerometer-mean()-Y"                   
[45] "FrequencyBodyAccelerometer-mean()-Z"                   
[46] "FrequencyBodyAccelerometer-std()-X"                    
[47] "FrequencyBodyAccelerometer-std()-Y"                    
[48] "FrequencyBodyAccelerometer-std()-Z"                    
[49] "FrequencyBodyAccelerometer-meanFreq()-X"               
[50] "FrequencyBodyAccelerometer-meanFreq()-Y"               
[51] "FrequencyBodyAccelerometer-meanFreq()-Z"               
[52] "FrequencyBodyAccelerometerJerk-mean()-X"               
[53] "FrequencyBodyAccelerometerJerk-mean()-Y"               
[54] "FrequencyBodyAccelerometerJerk-mean()-Z"               
[55] "FrequencyBodyAccelerometerJerk-std()-X"                
[56] "FrequencyBodyAccelerometerJerk-std()-Y"                
[57] "FrequencyBodyAccelerometerJerk-std()-Z"                
[58] "FrequencyBodyAccelerometerJerk-meanFreq()-X"           
[59] "FrequencyBodyAccelerometerJerk-meanFreq()-Y"           
[60] "FrequencyBodyAccelerometerJerk-meanFreq()-Z"           
[61] "FrequencyBodyGyroscope-mean()-X"                       
[62] "FrequencyBodyGyroscope-mean()-Y"                       
[63] "FrequencyBodyGyroscope-mean()-Z"                       
[64] "FrequencyBodyGyroscope-std()-X"                        
[65] "FrequencyBodyGyroscope-std()-Y"                        
[66] "FrequencyBodyGyroscope-std()-Z"                        
[67] "FrequencyBodyGyroscope-meanFreq()-X"                   
[68] "FrequencyBodyGyroscope-meanFreq()-Y"                   
[69] "FrequencyBodyGyroscope-meanFreq()-Z"                   
[70] "FrequencyBodyAccelerometerMagnitude-mean()"            
[71] "FrequencyBodyAccelerometerMagnitude-std()"             
[72] "FrequencyBodyAccelerometerMagnitude-meanFreq()"        
[73] "FrequencyBodyBodyAccelerometerJerkMagnitude-mean()"    
[74] "FrequencyBodyBodyAccelerometerJerkMagnitude-std()"     
[75] "FrequencyBodyBodyAccelerometerJerkMagnitude-meanFreq()"
[76] "FrequencyBodyBodyGyroscopeMagnitude-mean()"            
[77] "FrequencyBodyBodyGyroscopeMagnitude-std()"             
[78] "FrequencyBodyBodyGyroscopeMagnitude-meanFreq()"        
[79] "FrequencyBodyBodyGyroscopeJerkMagnitude-mean()"        
[80] "FrequencyBodyBodyGyroscopeJerkMagnitude-std()"         
[81] "FrequencyBodyBodyGyroscopeJerkMagnitude-meanFreq()"   
