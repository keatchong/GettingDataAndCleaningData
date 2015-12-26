# Objective 

Purpose of run_analysis.R is to process raw data from various files as shown in **Input** and produce an output file via the below sub-steps:  
+ Merge the given training and the test data sets into a single dataset for later processing.
+ Extract only the measurements on the mean and standard deviation for each measurement.
+ Replace the activities code in the data set to use descriptive activity names
+ Relabel the data set with descriptive variable names. 
+ Create a second, independent tidy data set to show the average value of each variable for each activity and each subject.
+ Output second dataset to file

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
2. Copy **all files and folder from package** parent folder follow original layout and put them **directly under** your R working folder ( as per `getwd()` )
3. Copy the script `run_analysis.R` to your R working folder
4. `source(“run_analysis.R”)` to run
5. Check output tidy_data.txt at working directory (the file will be overwritten each time step 4 is run)

# High Level View Of The Script
The script is single file script which containing the codes to carry out all the needed steps with no other embedded functions. While the script is commented appropriately at right place to aid understanding, it would be beneficial to have the high level pseudocode in mind



```

. LOAD needed libraries

. READ raw data files into memory

. CONSTRUCT temporary data sets (building blocks)

. PREPROCESS Measurement data set follow requirement

	. EXTRACTS variable labels from raw file

	. REPLACE column names with valid labels

	. SELECT only the measurements on mean and standard deviation


. COMBINE building blocks to form first draft of data set

. REPLACE activities code with descriptive activity names

. REMOVE objects deemed not needed anymore to free memory might help 

. REARRANGE fields position of data set 

. RELABEL the data set with descriptive variable names

. CREATE second data set ( calculate average of each variable for each activity and each subject ) 

. OUTPUT second data set into text file


```
 




  


