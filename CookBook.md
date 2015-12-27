# Research Dictionary For Human Activity Recognition Using Smartphones Dataset
Version 1.0
December 26,2015

# Revision History

Version| Date | Comments
--- | --- | ---
1.0 | 26/12/2015 | First Version Of Document

# Introduction

The following data dictionary describes average of mean and standard deviation of acceleration and angular movements variables pertained to six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) for each activity,each volunteer.

In addition to this introduction, the data dictionary includes the following four sections.

+ Revision History –This data dictionary should be considered a working document that will evolve over time. The revision history shown on the previous page provides a table
which describes updates to the document.

+ Study Overview - A brief description how the experiments being carried out and how was data being collected.  

+ Data Transformation – A list of steps to clean up and transform raw data to final tidy data.

+ Dataset Description – This section describes what data is available and how the data are stored.

+ List of Variables – A list of the entries (variables) in the dictionary which can be used as a table of contents to locate specific variables in the output text.


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

For the purpose of carrying out analysis stated in introduction and produce the final dataset, the below data transformation and cleaning steps are to be carried out
by the accompanying R script each time it is executed :
 
* Read features.txt, activity_labels.txt, subject_test.txt, subject_train.txt, X_test.txt, X_train.txt, y_test.txt, y_train.txt into R environment. (Other files are not required for the purpose of this analysis)
* Constructing final dataset building blocks
	* row binding subject_test and subject train data as block 1
	* row binding y_test and y_train as block 2
	* row binding X_test and X_train as block 3
* Replacing generic labels of block 3 using variable labels extract from features
* Select from block 3, only the measurements on mean and standard deviation (based on field name patterns mean() and std())
* Rename labels of block 1, block 2 with “Subject” and “Activity” 
* Combining block 1, block 2 and block 3 to form first draft of the data set
* Join the data set with activity_labels to obtain the description of activities
* Remove activity field from data set
* Re-arrange dataset fields follow sequence Subject, Activity and 66 mean and standard deviation measurements 
* Relabel the data set with descriptive variable names. 
* Group the data set with Subject and Activity fields  
* Summarise data set by apply mean function on mean and standard deviation measurements  

# Dataset Description
This dataset consists of a single space-delimited file represents observations consisting of study participants, activities performed during the study, and a computed average for each of the 66 measurement variables.


# List Of Variables

The following variables are included in the text file. 

Variable#| Variable Name | Variable Definition
--- | --- | ---
1|	Subject|	This is the ID to identify the person who conduct the experiments
2|	Activity|	Activity performed by subject
3|	tMeanOfBodyAcceleration(X-axis)|	Mean of body acceleration at X-Axis (Time Domain) – measured in standard gravity unit 'g'
4|	tMeanOfBodyAcceleration(Y-axis)|	Mean of body acceleration at Y-Axis (Time Domain) – measured in standard gravity unit 'g'
5|	tMeanOfBodyAcceleration(Z-axis)|	Mean of body acceleration at Z-Axis (Time Domain) – measured in standard gravity unit 'g'
6|	tStandardDeviationOfBodyAcceleration(X-axis)|	Standard Deviation of body acceleration at X-Axis (Time Domain) – measured in standard gravity unit 'g'
7|	tStandardDeviationOfBodyAcceleration(Y-axis)|	Standard Deviation of body acceleration at Y-Axis (Time Domain) – measured in standard gravity unit 'g'
8|	tStandardDeviationOfBodyAcceleration(Z-axis)|	Standard Deviation of body acceleration at Z-Axis (Time Domain) – measured in standard gravity unit 'g'
9|	tMeanOfGravityAcceleration(X-axis)|	Mean of gravity acceleration at X-Axis (Time Domain) – measured in standard gravity unit 'g'
10|	tMeanOfGravityAcceleration(Y-axis)|	Mean of gravity acceleration at Y-Axis (Time Domain) – measured in standard gravity unit 'g'
11|	tMeanOfGravityAcceleration(Z-axis)|	Mean of gravity acceleration at Z-Axis (Time Domain) – measured in standard gravity unit 'g'
12|	tStandardDeviationOfGravityAcceleration(X-axis)|	Standard Deviation of gravity acceleration at X-Axis (Time Domain) – measured in standard gravity unit 'g'
13|	tStandardDeviationOfGravityAcceleration(Y-axis)|	Standard Deviation of gravity acceleration at Y-Axis (Time Domain) – measured in standard gravity unit 'g'
14|	tStandardDeviationOfGravityAcceleration(Z-axis)|	Standard Deviation of gravity acceleration at Z-Axis (Time Domain) – measured in standard gravity unit 'g'
15|	tMeanOfChangeRateOfBodyAcceleratio(X-axis)|	Mean of change rate of body acceleration at X-Axis (Time Domain) – measured in unit g/s
16|	tMeanOfChangeRateOfBodyAcceleratio(Y-axis)|	Mean of change rate of body acceleration at Y-Axis (Time Domain) – measured in unit g/s
17|	tMeanOfChangeRateOfBodyAcceleratio(Z-axis)|	Mean of change rate of body acceleration at Z-Axis (Time Domain) – measured in unit g/s
18|	tStandardDeviationOfChangeRateOfBodyAcceleratio(X-axis)|	Standard Deviation of change rate of body acceleration at X-Axis (Time Domain) – measured in unit g/s
19|	tStandardDeviationOfChangeRateOfBodyAcceleratio(Y-axis)|	Standard Deviation of change rate of body acceleration at Y-Axis (Time Domain) – measured in unit g/s
20|	tStandardDeviationOfChangeRateOfBodyAcceleratio(Z-axis)|	Standard Deviation of change rate of body acceleration at Z-Axis (Time Domain) – measured in unit g/s
21|	tMeanOfAngularVelocity(X-axis)|	Mean of angular velocity at X-axis (Time Domain) measured in unit rad/s
22|	tMeanOfAngularVelocity(Y-axis)|	Mean of angular velocity at Y-axis (Time Domain) measured in unit rad/s
23|	tMeanOfAngularVelocity(Z-axis)|	Mean of angular velocity at Z-axis (Time Domain) measured in unit rad/s
24|	tStandardDeviationOfAngularVelocity(X-axis)|	Standard Deviation of angular velocity at X-axis (Time Domain) measured in unit rad/s
25|	tStandardDeviationOfAngularVelocity(Y-axis)|	Standard Deviation of angular velocity at Y-axis (Time Domain) measured in unit rad/s
26|	tStandardDeviationOfAngularVelocity(Z-axis)|	Standard Deviation of angular velocity at Z-axis (Time Domain) measured in unit rad/s
27|	tMeanOfChangeRateOfAngularAcceleration(X-axis)|	Mean of change rate of angular acceleration at X-Axis (Time Domain) – measured in unit rad/s^3
28|	tMeanOfChangeRateOfAngularAcceleration(Y-axis)|	Mean of change rate of angular acceleration at Y-Axis (Time Domain) – measured in unit rad/s^3
29|	tMeanOfChangeRateOfAngularAcceleration(Z-axis)|	Mean of change rate of angular acceleration at Z-Axis (Time Domain) – measured in unit rad/s^3
30|	tStandardDeviationOfChangeRateOfAngularAcceleration(X-axis)|	Standard Deviation of change rate of angular acceleration at X-Axis (Time Domain) – measured in unit rad/s^3
31|	tStandardDeviationOfChangeRateOfAngularAcceleration(Y-axis)|	Standard Deviation of change rate of angular acceleration at Y-Axis (Time Domain) – measured in unit rad/s^3
32|	tStandardDeviationOfChangeRateOfAngularAcceleration(Z-axis)|	Standard Deviation of change rate of angular acceleration at Z-Axis (Time Domain) – measured in unit rad/s^3
33|	tMeanOfMagnitudeOfBodyAcceleration|	Mean of magnitude of body acceleration (Time Domain) – measured in in standard gravity unit 'g'
34|	tStandardDeviationOfMagnitudeOfBodyAcceleration|	Standard Deviation of magnitude of body acceleration (Time Domain) – measured in in standard gravity unit 'g'
35|	tMeanOfMagnitudeOfGravityAcceleration|	Mean of magnitude of gravity acceleration  (Time Domain) – measured in in standard gravity unit 'g'
36|	tStandardDeviationOfMagnitudeOfGravityAcceleration|	Standard Deviation of magnitude of gravity acceleration  (Time Domain) – measured in in standard gravity unit 'g'
37|	tMeanOfMagnitudeOfChangeRateOfBodyAcceleration|	Mean of magnitude of change rate of body acceleration  (Time Domain) – measured in unit g/s
38|	tStandardDeviationOfMagnitudeOfChangeRateOfBodyAcceleration|	Standard Deviation of magnitude of change rate of body acceleration  (Time Domain) – measured in unit g/s
39|	tMeanOfMagnitudeOfAngularVelocity|	Mean of magnitude of angular velocity  (Time Domain) - measured in unit rad/s
40|	tStandardDeviationOfMagnitudeOfAngularVelocity|	Standard Deviation of magnitude of angular velocity (Time Domain) – measured in unit rad/s
41|	tMeanOfMagnitudeOfChangeRateOfAngularAcceleration|	Mean of magnitude of change rate of angular acceleration (Time Domain) – measured in unit rad/s^3
42|	tStandardDeviationOfMagnitudeOfChangeRateOfAngularAcceleration|	Standard Deviation of magnitude of change rate of angular acceleration (Time Domain) – measured in unit rad/s^3
43|	fMeanOfBodyAcceleration(X-axis)|	Mean of body acceleration at X-Axis (Frequency Domain) – measured in standard gravity unit 'g'
44|	fMeanOfBodyAcceleration(Y-axis)|	Mean of body acceleration at Y-Axis (Frequency Domain) – measured in standard gravity unit 'g'
45|	fMeanOfBodyAcceleration(Z-axis)|	Mean of body acceleration at Z-Axis (Frequency Domain) – measured in standard gravity unit 'g'
46|	fStandardDeviationOfBodyAcceleration(X-axis)|	Standard Deviation of body acceleration at X-Axis (Frequency Domain) – measured in standard gravity unit 'g'
47|	fStandardDeviationOfBodyAcceleration(Y-axis)|	Standard Deviation of body acceleration at Y-Axis (Frequency  Domain) – measured in standard gravity unit 'g'
48|	fStandardDeviationOfBodyAcceleration(Z-axis)|	Standard Deviation of body acceleration at Z-Axis (Frequency Domain) – measured in standard gravity unit 'g'
49|	fMeanOfChangeRateOfBodyAcceleratio(X-axis)|	Mean of change rate of body acceleration at X-Axis (Frequency Domain) – measured in unit g/s
50|	fMeanOfChangeRateOfBodyAcceleratio(Y-axis)|	Mean of change rate of body acceleration at Y-Axis (Frequency Domain) – measured in unit g/s
51|	fMeanOfChangeRateOfBodyAcceleratio(Z-axis)|	Mean of change rate of body acceleration at Z-Axis (Frequency Domain) – measured in unit g/s
52|	fStandardDeviationOfChangeRateOfBodyAcceleratio(X-axis)|	Standard Deviation of change rate of body acceleration at X-Axis (Frequency Domain) – measured in unit g/s
53|	fStandardDeviationOfChangeRateOfBodyAcceleratio(Y-axis)|	Standard Deviation of change rate of body acceleration at Y-Axis (Frequency Domain) – measured in unit g/s
54|	fStandardDeviationOfChangeRateOfBodyAcceleratio(Z-axis)|	Standard Deviation of change rate of body acceleration at Z-Axis (Frequency Domain) – measured in unit g/s
55|	fMeanOfAngularVelocity(X-axis)|	Mean of angular velocity at X-axis (Frequency Domain) measured in unit rad/s
56|	fMeanOfAngularVelocity(Y-axis)|	Mean of angular velocity at Y-axis (Frequency Domain) measured in unit rad/s
57|	fMeanOfAngularVelocity(Z-axis)|	Mean of angular velocity at Z-axis (Frequency Domain) measured in unit rad/s
58|	fStandardDeviationOfAngularVelocity(X-axis)|	Standard Deviation of angular velocity at X-axis (Frequency Domain) measured in unit rad/s
59|	fStandardDeviationOfAngularVelocity(Y-axis)|	Standard Deviation of angular velocity at Y-axis (Frequency Domain)measured in unit rad/s
60|	fStandardDeviationOfAngularVelocity(Z-axis)|	Standard Deviation of angular velocity at Z-axis (Frequency Domain) measured in unit rad/s
61|	fMeanOfMagnitudeOfBodyAcceleration|	Mean of magnitude of body acceleration (Frequency Domain) – measured in in standard gravity unit 'g'
62|	fStandardDeviationOfMagnitudeOfBodyAcceleration|	Standard Deviation of magnitude of of body acceleration (Frequency Domain) – measured in in standard gravity unit 'g'
63|	fMeanOfMagnitudeOfChangeRateOfBodyAcceleration|	Mean of magnitude of change rate of body acceleration  (Frequency Domain) – measured in unit g/s
64|	fStandardDeviationOfMagnitudeOfChangeRateOfBodyAcceleration|	Standard Deviation of magnitude of change rate of body acceleration  (Frequency Domain) – measured in unit g/s
65|	fMeanOfMagnitudeOfAngularVelocity|	Mean of magnitude of angular velocity  (Frequency Domain) - measured in unit rad/s
66|	fStandardDeviationOfMagnitudeOfAngularVelocity|	Standard Deviation of magnitude of angular velocity (Frequency Domain) – measured in unit rad/s
67|	fMeanOfMagnitudeOfChangeRateOfAngularAcceleration|	Mean of magnitude of change rate of angular acceleration (Frequency Domain) – measured in unit rad/s^3
68|	fStandardDeviationOfMagnitudeOfChangeRateOfAngularAcceleration|	Standard Deviation of magnitude of change rate of angular acceleration (Frequency Domain) – measured in unit rad/s^3

