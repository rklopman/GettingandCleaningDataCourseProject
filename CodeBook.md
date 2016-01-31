#CodeBook Getting and Cleaning Data Course Project
#Introduction
This is the codebook of the data produced by running the script run_analysis.R on smartphone data. 
#Variables
##Fixed variables
Fixed variables are:
* activity.id: identifier of activity
  * Type: integer
  * Unit: not applicable
* activity.name: short name of activity (e.g., WALKING)
  * Type: character
  * Unit: not applicable
* subject.id: identifier of subject (person) doing the activity
  * Type: integer
  * Unit: not applicable

##Measured variables

* avg.timeBodyAcc.mean.X, avg.timeBodyAcc.mean.Y, avg.timeBodyAcc.mean.Z
  * Type: numeric
  * Unit: not applicable
* avg.timeBodyAcc.std.X, avg.timeBodyAcc.std.Y, avg.timeBodyAcc.std.Z
* avg.timeGravityAcc.mean.X, avg.timeGravityAcc.mean.Y, avg.timeGravityAcc.mean.Z
* avg.timeGravityAcc.std.X, avg.timeGravityAcc.std.Y, avg.timeGravityAcc.std.Z
* avg.timeBodyAccJerk.mean.X, avg.timeBodyAccJerk.mean.Y, avg.timeBodyAccJerk.mean.Z
* avg.timeBodyAccJerk.std.X, avg.timeBodyAccJerk.std.Y, avg.timeBodyAccJerk.std.Z
* avg.timeBodyGyro.mean.X, avg.timeBodyGyro.mean.Y, avg.timeBodyGyro.mean.Z
* avg.timeBodyGyro.std.X, avg.timeBodyGyro.std.Y, avg.timeBodyGyro.std.Z
* avg.timeBodyGyroJerk.mean.X, "avg.timeBodyGyroJerk.mean.Y, avg.timeBodyGyroJerk.mean.Z
* avg.timeBodyGyroJerk.std.X, avg.timeBodyGyroJerk.std.Y, avg.timeBodyGyroJerk.std.Z
* avg.timeBodyAccMag.mean
* avg.timeBodyAccMag.std
* avg.timeGravityAccMag.mean
* avg.timeGravityAccMag.std
* avg.timeBodyAccJerkMag.mean
* avg.timeBodyAccJerkMag.std
* avg.timeBodyGyroMag.mean
* avg.timeBodyGyroMag.std
* avg.timeBodyGyroJerkMag.mean
* avg.timeBodyGyroJerkMag.std
* avg.freqBodyAcc.mean.X, avg.freqBodyAcc.mean.Y, avg.freqBodyAcc.mean.Z
* avg.freqBodyAcc.std.X, avg.freqBodyAcc.std.Y, avg.freqBodyAcc.std.Z
* avg.freqBodyAccJerk.mean.X, avg.freqBodyAccJerk.mean.Y, avg.freqBodyAccJerk.mean.Z
* avg.freqBodyAccJerk.std.X" "avg.freqBodyAccJerk.std.Y, avg.freqBodyAccJerk.std.Z
* avg.freqBodyGyro.mean.X, avg.freqBodyGyro.mean.Y, avg.freqBodyGyro.mean.Z
* avg.freqBodyGyro.std.X, avg.freqBodyGyro.std.Y, avg.freqBodyGyro.std.Z
* avg.freqBodyAccMag.mean
* avg.freqBodyAccMag.std
* avg.freqBodyBodyAccJerkMag.mean
* avg.freqBodyBodyAccJerkMag.std
* avg.freqBodyBodyGyroMag.mean
* avg.freqBodyBodyGyroMag.std
* avg.freqBodyBodyGyroJerkMag.mean
* avg.freqBodyBodyGyroJerkMag.std

#Summary choices and study design
##Summary choices
Measured variables are calculated by taking the average value of the original measured variables that are extracted.
This is done per combination of activity and subject.
##Study design
The data is collected from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.
The input data contains 10299 observations with 561 measured variables.


