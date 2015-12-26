# Research Dictionary For Human Activity Recognition Using Smartphones Dataset
Version 1.0
December 25,2015

# Revision History

Version| Date | Comments
--- | --- | ---
1.0 | 25/12/2015 | First Version Of Document

# Introduction

The following data dictionary describes average of mean and standard deviation of acceleration and angular movements variables pertained to six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) for each volunteer.

In addition to this introduction, the data dictionary includes the following four sections.

+ Revision History –This data dictionary should be considered a working document that will evolve over time. The revision history shown on the previous page provides a table
which describes updates to the document.

+ Study Overview - A brief description how the experiments being carried out and how was data being collected.  

+ Data Transformation – A list of related subject areas and specific documents of value to users of the data set described in this data dictionary.

+ Dataset Description – This section describes what data is available and how the data are stored.

+ List of Variables – A list of the entries (variables) in the dictionary which can be used as a table of contents to locate specific variables in the document.


# Study Overview

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the **time** and **frequency domain**.  


# Overview of available raw data sets

Each record of the raw data from the experiments can be viewed comprising triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration,triaxial Angular velocity from the gyroscope, a 561-feature vector with time and frequency domain variables, its’ activity label and identifier of the subject who carried out the experiment. 

Thought, data are scattered into various files as showed below :

+ ’features.txt': List of all features.
+ ’activity_labels.txt': Links the class labels with their activity name.
+ ’train/X_train.txt': Training set.
+ ’train/y_train.txt': Training labels.
+ ’test/X_test.txt': Test set.
+ ’test/y_test.txt': Test labels.
+ ’train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
+ ’train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
+ ’train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
+ ’train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. 

# Data Transformation

For the purpose of carrying out analysis stated in introduction and produce the final dataset, the below data transformation and cleaning steps are to be executed
by the accompanying R script :
 
* features.txt, activity_labels.txt, subject_test.txt, subject_train.txt, X_test.txt, X_train.txt, y_test.txt, y_train.txt are read into R enrionment. (Other files are not required for the purpose of this analysis)
* Constructing final dataset building blocks
	* row binding subject_test and subject train data as block 1
	* row binding y_test and y_train as block 2
	* row binding x_test and X_train as block 3
* Replacing generic labels for block 3 using variable labels extract from features
* Select from block 3, only the measurements on mean and standard deviation (based on field name patterns mean() and std())
* Rename labels of block 1, block 2 with “Subject” and “Activity” 
* Combining block 1, block 2 and block 3 to form first draft of the data set
* Join the data set with activity_labels to obtain the description of activities
* Remove activity field from data set
* Re-arrange dataset fields follow sequence Subject, Activity and 66 mean and standard deviation measurements 
* Relabel the data set with descriptive variable names. 
* Group the data set with Subject and Activity fields  
* Summarise data set by apply mean function on mean and standard deviation measurements  
* Output second data set to file tidy_data.txt

# Dataset Description
This dataset consists of a single space-delimited file represents observations consisting of study participants, activities performed during the study, and a computed average for each of the 66 measurement variables.


# List Of Variables


Version| Date | Comments
* --- * | --- | ---
1	|”Subject”|                     	
2	|”Activity”|                    	
3	|“Mean of X-axis Body Accelaration (Time Domain)|
4	|“Mean of Y-axis Body Accelaration (Time Domain)”|	
5	|“Mean of Z-axis Body Accelaration (Time Domain)”|	
6	|“Standard Deviation of X-axis Body Accelaration (Time Domain)”|
7	|“Standard Deviation of Y-axis Body Accelaration (Time Domain)”|	
8	|“Standard Deviation of Z-axis Body Accelaration (Time Domain)”|	
9	|“Mean of X-axis Gravity Accelaration (Time Domain)”|	
10	|“Mean of Y-axis Gravity Accelaration (Time Domain)”|	
11	|“Mean of Z-axis Gravity Accelaration (Time Domain)”|	


