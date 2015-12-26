# ============================================================================ #
# File Name            :  run_analysis.R
# Author               :  Keat Min Chong
# Creation Date        :  12-20-2015
# Date Last Updated    :  12-25-2015     
# Detail Information   :  README.md 
#
# ============================================================================ #

library(plyr)
library(dplyr)

# Reads data files into dataframes
features <- read.table("./features.txt", header = FALSE)
activity.labels <- read.table("./activity_labels.txt", header = FALSE)
colnames(activity.labels) <- c("ActivityCode", "Activity")
subject.test <- read.table("./test/subject_test.txt", header = FALSE)
subject.train <- read.table("./train/subject_train.txt", header = FALSE)
X.test <- read.table("./test/X_test.txt", header = FALSE)
X.train <- read.table("./train/X_train.txt", header = FALSE)
y.test <- read.table("./test/y_test.txt", header = FALSE)
y.train <- read.table("./train/y_train.txt", header = FALSE)

# Constructing transitioning dataframes 
dat1 <- rbind(subject.test, subject.train)  # row bind subject.test,subject.train
dat2 <- rbind(y.test, y.train)  # row bind y.test,y.train
dat3 <- rbind(X.test, X.train)  # row bind features,X.test,X.train

# Extract variable labels from features dataframe
variable.labels <- t(features)  # transpose dataframe to matrix
# Pass second row of matrix to make.names function to generate unique labels  
valid.variable.labels <- make.names(variable.labels[2,],  
                                    unique = TRUE, allow_ = TRUE) 
# Replace column names of dat3 with valid labels   
colnames(dat3)  <- valid.variable.labels

# Extracts from dat3 only the measurements on mean and standard deviation 
dat3 <- dat3[grepl("\\.std\\.\\.|\\.mean\\.\\.", valid.variable.labels)]
        
# column combine dat1,dat2,dat3 to form first draft of tidy data
tidy.data <- cbind(dat1, dat2)
colnames(tidy.data) <- c("Subject", "ActivityCode") #  ensure colname uniqueness 
tidy.data <- cbind(tidy.data, dat3) # fist draft formed
 
# Replace activities code with descriptive activity names from activity.labels 
tidy.data <- join(tidy.data,activity.labels, by="ActivityCode")
tidy.data <- select(tidy.data, -(ActivityCode))

# Discard objects deemed not needed anymore at this stage to free up memory
remove(features) 
remove(activity.labels) 
remove(subject.test) 
remove(subject.train) 
remove(X.test) 
remove(X.train)
remove(y.test) 
remove(y.train)
remove(dat1)
remove(dat2)
remove(dat3)
remove(valid.variable.labels)
remove(variable.labels)

# rearrange tidy.data before rename fields
tidy.data <- select(tidy.data, Subject, Activity, everything())

# Relabels the data set with descriptive variable names. 
colnames(tidy.data) <- c("Subject", "Activity",                    
        "Mean of X-axis Body Accelaration (Time Domain)",
        "Mean of Y-axis Body Accelaration (Time Domain)",
        "Mean of Z-axis Body Accelaration (Time Domain)",
        "Standard Deviation of X-axis Body Accelaration (Time Domain)",
        "Standard Deviation of Y-axis Body Accelaration (Time Domain)",
        "Standard Deviation of Z-axis Body Accelaration (Time Domain)",
        "Mean of X-axis Gravity Accelaration (Time Domain)",
        "Mean of Y-axis Gravity Accelaration (Time Domain)",
        "Mean of Z-axis Gravity Accelaration (Time Domain)",
        "Standard Deviation of X-axis Gravity Accelaration (Time Domain)",
        "Standard Deviation of Y-axis Gravity Accelaration (Time Domain)",
        "Standard Deviation of Z-axis Gravity Accelaration (Time Domain)",
        "Mean of X-axis Body Accelaration Jerk (Time Domain)",
        "Mean of Y-axis Body Accelaration Jerk (Time Domain)",
        "Mean of Z-axis Body Accelaration Jerk (Time Domain)",
        "Standard Deviation of X-axis Body Accelaration Jerk (Time Domain)",
        "Standard Deviation of Y-axis Body Accelaration Jerk (Time Domain)",
        "Standard Deviation of Z-axis Body Accelaration Jerk (Time Domain)",
        "Mean of X-axis Angular Velocity (Time Domain)",
        "Mean of Y-axis Angular Velocity (Time Domain)",
        "Mean of Z-axis Angular Velocity(Time Domain)",
        "Standard Deviation of X-axis Body Angular Velocity (Time Domain)",
        "Standard Deviation of Y-axis Body Angular Velocity (Time Domain)",
        "Standard Deviation of Z-axis Body Angular Velocity (Time Domain)",
        "Mean of X-axis Angular Jerk (Time Domain)",
        "Mean of Y-axis Angular Jerk (Time Domain)",
        "Mean of Z-axis Angular Jerk (Time Domain)",
        "Standard Deviation of X-axis Angular Jerk (Time Domain)",
        "Standard Deviation of Y-axis Angular Jerk (Time Domain)",
        "Standard Deviation of Z-axis Angular Jerk (Time Domain)",
        "Mean of Magnitude of Body Accelaration (Time Domain)",
        "Standard Deviation of Magnitude of Body Accelaration (Time Domain)",
        "Mean of Magnitude of Gravity Accelaration (Time Domain)",
        "Standard Deviation of Magnitude of Gravity Accelaration (Time Domain)",
        "Mean of Magnitude of Body Accelaration Jerk (Time Domain)",
        "Standard Deviation of Magnitude of Body Accelaration Jerk (Time Domain)",
        "Mean of Magnitude of Body Angular Velocity (Time Domain)",
        "Standard Deviation of Magnitude of Body Angular Velocity (Time Domain)",
        "Mean of Magnitude of Body Angular Jerk (Time Domain)",
        "Standard Deviation of Magnitude of Body Angular Jerk (Time Domain)",
        "Mean of X-axis Body Accelaration (Frequency Domain)",
        "Mean of Y-axis Body Accelaration (Frequency Domain)",
        "Mean of Z-axis Body Accelaration (Frequency Domain)",
        "Standard Deviation of X-axis Body Accelaration (Frequency Domain)",
        "Standard Deviation of Y-axis Body Accelaration (Frequency Domain)",
        "Standard Deviation of Z-axis Body Accelaration (Frequency Domain)",
        "Mean of X-axis Body Accelaration Jerk (Frequency Domain)",
        "Mean of Y-axis Body Accelaration Jerk (Frequency Domain)",
        "Mean of Z-axis Body Accelaration Jerk (Frequency Domain)",
        "Standard Deviation of X-axis Body Accelaration Jerk (Frequency Domain)",
        "Standard Deviation of Y-axis Body Accelaration Jerk (Frequency Domain)",
        "Standard Deviation of Z-axis Body Accelaration Jerk (Frequency Domain)",
        "Mean of X-axis Angular Velocity (Frequency Domain)",
        "Mean of Y-axis Angular Velocity (Frequency Domain)",
        "Mean of Z-axis Angular Velocity(Frequency Domain)",
        "Standard Deviation of X-axis Body Angular Velocity (Frequency Domain)",
        "Standard Deviation of Y-axis Body Angular Velocity (Frequency Domain)",
        "Standard Deviation of Z-axis Body Angular Velocity (Frequency Domain)",
        "Mean of Magnitude of Body Accelaration (Frequency Domain)",
        "Standard Deviation of Magnitude of Body Accelaration (Frequency Domain)",
        "Mean of Magnitude of Body Accelaration Jerk (Frequency Domain)",
        "Standard Deviation of Magnitude of Body Accelaration Jerk (Frequency Domain)",
        "Mean of Magnitude of Body Angular Velocity (Frequency Domain)",
        "Standard Deviation of Magnitude of Body Angular Velocity (Frequency Domain)",
        "Mean of Magnitude of Body Angular Jerk (Frequency Domain)",
        "Standard Deviation of Magnitude of Body Angular Jerk (Frequency Domain)")
   

# Average of each variable for each activity and each subject to create 
# second data frame 
group <- group_by(tidy.data, Subject, Activity)
tidy.data.summary <- summarise_each(group, funs(mean))
remove(group) # discard group object

# output final data frame into text file
write.table(tidy.data.summary, file="tidy_data.txt", row.names=FALSE)
