# ============================================================================ #
# File Name            :  run_analysis.R
# Author               :  Keat Min Chong
# Creation Date        :  12-20-2015
# Date Last Updated    :  12-27-2015     
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
dat1 <- rbind(subject.test, subject.train)  # row bind subject.test, subject.train
dat2 <- rbind(y.test, y.train)  # row bind y.test, y.train
dat3 <- rbind(X.test, X.train)  # row bind X.test, X.train

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
                         "tMeanOfBodyAcceleration(X-axis)",
                         "tMeanOfBodyAcceleration(Y-axis)",
                         "tMeanOfBodyAcceleration(Z-axis)",
                         "tStandardDeviationOfBodyAcceleration(X-axis)",
                         "tStandardDeviationOfBodyAcceleration(Y-axis)",
                         "tStandardDeviationOfBodyAcceleration(Z-axis)",
                         "tMeanOfGravityAcceleration(X-axis)",
                         "tMeanOfGravityAcceleration(Y-axis)",
                         "tMeanOfGravityAcceleration(Z-axis)",
                         "tStandardDeviationOfGravityAcceleration(X-axis)",
                         "tStandardDeviationOfGravityAcceleration(Y-axis)",
                         "tStandardDeviationOfGravityAcceleration(Z-axis)",
                         "tMeanOfChangeRateOfBodyAcceleratio(X-axis)",
                         "tMeanOfChangeRateOfBodyAcceleratio(Y-axis)",
                         "tMeanOfChangeRateOfBodyAcceleratio(Z-axis)",
                         "tStandardDeviationOfChangeRateOfBodyAcceleratio(X-axis)",
                         "tStandardDeviationOfChangeRateOfBodyAcceleratio(Y-axis)",
                         "tStandardDeviationOfChangeRateOfBodyAcceleratio(Z-axis)",
                         "tMeanOfAngularVelocity(X-axis)",
                         "tMeanOfAngularVelocity(Y-axis)",
                         "tMeanOfAngularVelocity(Z-axis)",
                         "tStandardDeviationOfAngularVelocity(X-axis)",
                         "tStandardDeviationOfAngularVelocity(Y-axis)",
                         "tStandardDeviationOfAngularVelocity(Z-axis)",
                         "tMeanOfChangeRateOfAngularAcceleration(X-axis)",
                         "tMeanOfChangeRateOfAngularAcceleration(Y-axis)",
                         "tMeanOfChangeRateOfAngularAcceleration(Z-axis)",
                         "tStandardDeviationOfChangeRateOfAngularAcceleration(X-axis)",
                         "tStandardDeviationOfChangeRateOfAngularAcceleration(Y-axis)",
                         "tStandardDeviationOfChangeRateOfAngularAcceleration(Z-axis)",
                         "tMeanOfMagnitudeOfBodyAcceleration",
                         "tStandardDeviationOfMagnitudeOfBodyAcceleration",
                         "tMeanOfMagnitudeOfGravityAcceleration",
                         "tStandardDeviationOfMagnitudeOfGravityAcceleration",
                         "tMeanOfMagnitudeOfChangeRateOfBodyAcceleration",
                         "tStandardDeviationOfMagnitudeOfChangeRateOfBodyAcceleration",
                         "tMeanOfMagnitudeOfAngularVelocity",
                         "tStandardDeviationOfMagnitudeOfAngularVelocity",
                         "tMeanOfMagnitudeOfChangeRateOfAngularAcceleration",
                         "tStandardDeviationOfMagnitudeOfChangeRateOfAngularAcceleration",
                         "fMeanOfBodyAcceleration(X-axis)",
                         "fMeanOfBodyAcceleration(Y-axis)",
                         "fMeanOfBodyAcceleration(Z-axis)",
                         "fStandardDeviationOfBodyAcceleration(X-axis)",
                         "fStandardDeviationOfBodyAcceleration(Y-axis)",
                         "fStandardDeviationOfBodyAcceleration(Z-axis)",
                         "fMeanOfChangeRateOfBodyAcceleratio(X-axis)",
                         "fMeanOfChangeRateOfBodyAcceleratio(Y-axis)",
                         "fMeanOfChangeRateOfBodyAcceleratio(Z-axis)",
                         "fStandardDeviationOfChangeRateOfBodyAcceleratio(X-axis)",
                         "fStandardDeviationOfChangeRateOfBodyAcceleratio(Y-axis)",
                         "fStandardDeviationOfChangeRateOfBodyAcceleratio(Z-axis)",
                         "fMeanOfAngularVelocity(X-axis)",
                         "fMeanOfAngularVelocity(Y-axis)",
                         "fMeanOfAngularVelocity(Z-axis)",
                         "fStandardDeviationOfAngularVelocity(X-axis)",
                         "fStandardDeviationOfAngularVelocity(Y-axis)",
                         "fStandardDeviationOfAngularVelocity(Z-axis)",
                         "fMeanOfMagnitudeOfBodyAcceleration",
                         "fStandardDeviationOfMagnitudeOfBodyAcceleration",
                         "fMeanOfMagnitudeOfChangeRateOfBodyAcceleration",
                         "fStandardDeviationOfMagnitudeOfChangeRateOfBodyAcceleration",
                         "fMeanOfMagnitudeOfAngularVelocity",
                         "fStandardDeviationOfMagnitudeOfAngularVelocity",
                         "fMeanOfMagnitudeOfChangeRateOfAngularAcceleration",
                         "fStandardDeviationOfMagnitudeOfChangeRateOfAngularAcceleration")
                         

# Average of each variable for each activity and each subject to create 
# second data frame 
group <- group_by(tidy.data, Subject, Activity)

# final data set
tidy.data <- summarise_each(group, funs(mean))

remove(group) # discard group object




