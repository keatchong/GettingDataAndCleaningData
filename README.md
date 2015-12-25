# Objective 

Purpose of the script is to process raw data from various files as shown in Input and produce tidy_data.txt (showing Average values of each variable for each activity and each subject) as output via the below sub-activities :  
     - Merges the training and the test sets to create one data set.
     - Extracts only the measurements on the mean and standard deviation for each measurement.
     - Uses descriptive activity names to name the activities in the data set
     -Appropriately labels the data set with descriptive variable names. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# Input

1. features.txt
2. activity_labels.txt
3. subject_test.txt
4. subject_train.txt
5. X_test.txt
6. X_train.txt 
7. y_test.txt
8. y_train.txt

# Output

1. tidy_data.txt

# Development/Testing Environment

+ OS : OX Yosemite Version 10.10
+ Memory : 4GB
+ R Version : Version 3.2.2 (2015-08-14)
+ Non Base Packages: dplyr_0.4.3, plyr_1.8.3  

# Execution Steps

1. Unzip data package to your preferred directory ex: <home directory>
2. Copy all files and folder from package to be directly under your R working folder
3. Copy this script  to your working folder
4. source (“run_analysis.R”) to run


