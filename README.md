# Objective 

Purpose of the script is to process raw data from various files as shown in **Input** and produce an output file via the below sub-steps:  
+ Merges the training and the test sets to create single data set.
+ Extracts only the measurements on the mean and standard deviation for each measurement.
+ Rename the activities in the data set to use descriptive activity names
+ labels the data set with descriptive variable names. 
+ Creates a second,independent tidy data set with the average value of each variable for each activity and each subject.
+ Output second dataset to tidy.txt

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

1. Unzip data package to your preferred directory ex: `<your_home_directory>`
2. Copy **all files and folder from package** to be **directly under** your R working folder ( as per `getwd()` )
3. Copy this script  to your working folder
4. `source(“run_analysis.R”)` to run
5. Check output tidy_data.txt at working directory (the file will be overwritten each time step 4 is run)

# Walk through Of Code
## The script is straight forward single file script which containing the codes to carry out 
## all the needed steps with no other embedded functions.
## While the script is commented appropriately at right place to aid understanding, you could read 
## the code with below high level subsection in mind
  

### Reads data files into dataframes
### Constructing transitioning dataframes 
### Extract variable labels from features dataframe
### Replace column names of dat3 with valid labels   
### Extracts from dat3 only the measurements on mean and standard deviation 
### column combine dat1,dat2,dat3 to form first draft of tidy data
### Replace activities code with descriptive activity names from activity.labels 
### Discard objects deemed not needed anymore at this stage to free up memory
### rearrange tidy.data before rename fields
### Relabels the data set with descriptive variable names. 
### Average of each variable for each activity and each subject to create 
### second data frame 
### output final data frame into text file



