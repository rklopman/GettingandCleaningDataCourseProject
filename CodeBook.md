#CodeBook Getting and Cleaning Data Course Project
#Introduction
This is the codebook of the data produced by running the script run_analysis.R on smartphone data. 
#Study design and summary choices
##Study design
The data is collected from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.
The input data contains 10299 observations with 561 measured variables. The obtained dataset has been randomly partitioned into two sets (70% training data and 30% test data).
For more information on the input data, please refer to:
* http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
* The file features_info.txt in the data directory UCI HAR Dataset or in this GitHub repository

##Summary choices
Measured variables are calculated by taking the average value of the original measured variables that are extracted.
This is done per combination of activity and subject.
#Variables
##Fixed variables
Fixed variables are:
* activity.id
  * Description: identifier of activity
  * Type: integer
  * Unit: not applicable
* activity.name
  * Description: short name of activity (e.g., WALKING)
  * Type: character
  * Unit: not applicable
* subject.id
  * Description: identifier of subject (person) doing the activity
  * Type: integer
  * Unit: not applicable

##Measured variables

* avg.timeBodyAcc.mean.X, avg.timeBodyAcc.mean.Y, avg.timeBodyAcc.mean.Z
  * Description: 
  * Type: numeric
  * Unit: seconds
* avg.timeBodyAcc.std.X, avg.timeBodyAcc.std.Y, avg.timeBodyAcc.std.Z
  * Description: 
  * Type: numeric
  * Unit: seconds
* avg.timeGravityAcc.mean.X, avg.timeGravityAcc.mean.Y, avg.timeGravityAcc.mean.Z
  * Description: 
  * Type: numeric
  * Unit: seconds
* avg.timeGravityAcc.std.X, avg.timeGravityAcc.std.Y, avg.timeGravityAcc.std.Z
  * Description: 
  * Type: numeric
  * Unit: seconds
* avg.timeBodyAccJerk.mean.X, avg.timeBodyAccJerk.mean.Y, avg.timeBodyAccJerk.mean.Z
  * Description: 
  * Type: numeric
  * Unit: seconds
* avg.timeBodyAccJerk.std.X, avg.timeBodyAccJerk.std.Y, avg.timeBodyAccJerk.std.Z
  * Description: 
  * Type: numeric
  * Unit: seconds
* avg.timeBodyGyro.mean.X, avg.timeBodyGyro.mean.Y, avg.timeBodyGyro.mean.Z
  * Description: 
  * Type: numeric
  * Unit: seconds
* avg.timeBodyGyro.std.X, avg.timeBodyGyro.std.Y, avg.timeBodyGyro.std.Z
  * Description: 
  * Type: numeric
  * Unit: seconds
* avg.timeBodyGyroJerk.mean.X, "avg.timeBodyGyroJerk.mean.Y, avg.timeBodyGyroJerk.mean.Z
  * Description: 
  * Type: numeric
  * Unit: seconds
* avg.timeBodyGyroJerk.std.X, avg.timeBodyGyroJerk.std.Y, avg.timeBodyGyroJerk.std.Z
  * Description: 
  * Type: numeric
  * Unit: seconds
* avg.timeBodyAccMag.mean
  * Description: 
  * Type: numeric
  * Unit: seconds
* avg.timeBodyAccMag.std
  * Description: 
  * Type: numeric
  * Unit: seconds
* avg.timeGravityAccMag.mean
  * Description: 
  * Type: numeric
  * Unit: seconds
* avg.timeGravityAccMag.std
  * Description: 
  * Type: numeric
  * Unit: seconds
* avg.timeBodyAccJerkMag.mean
  * Description: 
  * Type: numeric
  * Unit: seconds
* avg.timeBodyAccJerkMag.std
  * Description: 
  * Type: numeric
  * Unit: seconds
* avg.timeBodyGyroMag.mean
  * Description: 
  * Type: numeric
  * Unit: seconds
* avg.timeBodyGyroMag.std
  * Description: 
  * Type: numeric
  * Unit: seconds
* avg.timeBodyGyroJerkMag.mean
  * Description: 
  * Type: numeric
  * Unit: seconds
* avg.timeBodyGyroJerkMag.std
  * Description: 
  * Type: numeric
  * Unit: seconds
* avg.freqBodyAcc.mean.X, avg.freqBodyAcc.mean.Y, avg.freqBodyAcc.mean.Z
  * Description: 
  * Type: numeric
  * Unit: Hertz
* avg.freqBodyAcc.std.X, avg.freqBodyAcc.std.Y, avg.freqBodyAcc.std.Z
  * Description: 
  * Type: numeric
  * Unit: Hertz
* avg.freqBodyAccJerk.mean.X, avg.freqBodyAccJerk.mean.Y, avg.freqBodyAccJerk.mean.Z
  * Description: 
  * Type: numeric
  * Unit: Hertz
* avg.freqBodyAccJerk.std.X" "avg.freqBodyAccJerk.std.Y, avg.freqBodyAccJerk.std.Z
  * Description: 
  * Type: numeric
  * Unit: Hertz
* avg.freqBodyGyro.mean.X, avg.freqBodyGyro.mean.Y, avg.freqBodyGyro.mean.Z
  * Description: 
  * Type: numeric
  * Unit: Hertz
* avg.freqBodyGyro.std.X, avg.freqBodyGyro.std.Y, avg.freqBodyGyro.std.Z
  * Description: 
  * Type: numeric
  * Unit: Hertz
* avg.freqBodyAccMag.mean
  * Description: 
  * Type: numeric
  * Unit: Hertz
* avg.freqBodyAccMag.std
  * Description: 
  * Type: numeric
  * Unit: Hertz
* avg.freqBodyBodyAccJerkMag.mean
  * Description: 
  * Type: numeric
  * Unit: Hertz
* avg.freqBodyBodyAccJerkMag.std
  * Description: 
  * Type: numeric
  * Unit: Hertz
* avg.freqBodyBodyGyroMag.mean
  * Description: 
  * Type: numeric
  * Unit: Hertz
* avg.freqBodyBodyGyroMag.std
  * Description: 
  * Type: numeric
  * Unit: Hertz
* avg.freqBodyBodyGyroJerkMag.mean
  * Description: 
  * Type: numeric
  * Unit: Hertz
* avg.freqBodyBodyGyroJerkMag.std
  * Description: 
  * Type: numeric
  * Unit: Hertz
