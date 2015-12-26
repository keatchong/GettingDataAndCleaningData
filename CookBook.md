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

The raw data from the experiments can be viewed as records of comprising triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration,triaxial Angular velocity from the gyroscope, a 561-feature vector with time and frequency domain variables, its’ activity label and identifier of the subject who carried out the experiment. These data from experiments are scattered into various files as showed below :

+ ’features.txt': List of all features.
+ ’activity_labels.txt': Links the class labels with their activity name.
+ ’train/X_train.txt': Training set.
+ ’train/y_train.txt': Training labels.
+ ’test/X_test.txt': Test set.
+ ’test/y_test.txt': Test labels.
+ ’train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
+ ’train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
+ ’train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
+ ’train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 


# Data Transformation


# Dataset Description

# List Of Variables




For each record it is provided:
======================================


The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

