# Anderson
# run_analysis.R
#
# Getting and Cleaning Data Course Project
#
# Purpose:
# 1) Merges the training and the test sets to create one data set.
# 2) Extracts only the measurements on the mean and standard deviation for 
#     each measurement.
# 3) Uses descriptive activity names to name the activities in the data set.
# 4) Appropriately labels the data set with descriptive variable names.
# 5) From the data set in step 4, creates a second, independent tidy data 
#     set with the average of each variable for each activity and each subject.
################################################################################
# Load packages for data manipulation
library(dplyr)
library(tidyr)
library(data.table)

# Download and read in the data sets
if(!file.exists("./data")){
      dir.create("./data")
      }
dataUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(dataUrl, destfile="./data/data.zip", method = "curl")
fileList <- unzip("./data/data.zip")

# Read in all data

Xtest <- fread("./UCI HAR Dataset/test/X_test.txt")
Xtrain <- fread("./UCI HAR Dataset/train/X_train.txt")

Ytest <- fread("./UCI HAR Dataset/test/Y_test.txt")
Ytrain <- fread("./UCI HAR Dataset/train/Y_train.txt")

Subtest <- fread("./UCI HAR Dataset/test/subject_test.txt")
Subtrain <- fread("./UCI HAR Dataset/train/subject_train.txt")

Features <- fread("./UCI HAR Dataset/features.txt", col.names = c("Findex","Fname"))

ActivityLabels <- fread("./UCI HAR Dataset/activity_labels.txt")
colnames(ActivityLabels) = c("ActivityID", "Label")

# Merge the data sets using rbindlist and then label

#Xcombo <- rbindlist(list(Xtest, Xtrain))
Xcombo <- rbind(Xtest, Xtrain)
colnames(Xcombo) = Features$Fname

Ycombo <- rbindlist(list(Ytest, Ytrain))
colnames(Ycombo) = "ActivityID"

Subcombo <- rbindlist(list(Subtest, Subtrain))
colnames(Subcombo) = "SubjectID"

# Pick out all the features with mean or std in the name
MeanStdFeatures <- grep("(mean|std)\\(\\)", Features$Fname)

# Filter down to just the columns we want
XComboMeanStd <- Xcombo[,MeanStdFeatures,with=FALSE]

# Add column for descriptive activity names
YcomboLabeled <- left_join(Ycombo,ActivityLabels,by="ActivityID")

# Put all data into a clean set and write it out
CleanSet <- cbind(Subcombo, YcomboLabeled$Label, XComboMeanStd)
colnames(CleanSet)[2] = "Activity"
names(CleanSet) <- gsub("tBodyAcc","Time-Body-Accelerometer", names(CleanSet))
names(CleanSet) <- gsub("tGravityAcc","Time-Gravity-Accelerometer", names(CleanSet))
names(CleanSet) <- gsub("tBodyGyro","Time-Body-Gyroscope", names(CleanSet))
names(CleanSet) <- gsub("fBodyAcc","Frequency-Body-Accelerometer", names(CleanSet))
names(CleanSet) <- gsub("fGravityAcc","Frequency-Gravity-Accelerometer", names(CleanSet))
names(CleanSet) <- gsub("fBodyGyro","Frequency-Body-Gyroscope", names(CleanSet))
names(CleanSet) <- gsub("fGravityAcc","Frequency-Gravity-Accelerometer", names(CleanSet))
names(CleanSet) <- gsub("fBodyGyro","Frequency-Body-Gyroscope", names(CleanSet))
names(CleanSet) <- gsub("fBodyBodyAcc","Frequency-BodyBody-Accelerometer", names(CleanSet))
names(CleanSet) <- gsub("fBodyBodyGyro","Frequency-BodyBody-Gyroscope", names(CleanSet))

write.table(CleanSet, "./CleaningDataProject/cleaned_merged_data.txt")

# NEXT: creates a second, independent tidy data 
#     set with the average of each variable for each activity and each subject.

SummarizedData <- CleanSet[,lapply(.SD,mean),by="SubjectID,Activity"]
SummarizedData <- setorder(SummarizedData, SubjectID, Activity)

write.table(SummarizedData, "./CleaningDataProject/tidy_set.txt", row.names = FALSE)