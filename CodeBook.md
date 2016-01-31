#CodeBook for data produced by script run_analysis.R
#Introduction
This is the codebook of the data produced by running the script 'run_analysis.R' on smartphone data. 
#Study design and summary choices
##Study design
The data is collected from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.
The input data contains 10299 observations with 561 measured variables. The obtained dataset has been randomly partitioned into two sets (70% training data and 30% test data).
For more information on the input data, please refer to:
* http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
* The file 'features_info.txt' in the directory 'UCI HAR Dataset' of the input data or in this GitHub repository

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
Measured variables are:
* avg.timeBodyAcc.mean.X, avg.timeBodyAcc.mean.Y, avg.timeBodyAcc.mean.Z
  * Description: average value of mean body linear acceleration signal in time domain. This average value is calculated per combination of activity and subject. The variables are for the 3 dimensions (x, y, z respectively).
  * Type: numeric
  * Unit: seconds
* avg.timeBodyAcc.std.X, avg.timeBodyAcc.std.Y, avg.timeBodyAcc.std.Z
  * Description: average value of standard deviation of body linear acceleration signal in time domain. This average value is calculated per combination of activity and subject. The variables are for the 3 dimensions (x, y, z respectively).
  * Type: numeric
  * Unit: seconds
* avg.timeGravityAcc.mean.X, avg.timeGravityAcc.mean.Y, avg.timeGravityAcc.mean.Z
  * Description: average value of mean gravity linear acceleration signal in time domain. This average value is calculated per combination of activity and subject. The variables are for the 3 dimensions (x, y, z respectively).
  * Type: numeric
  * Unit: seconds
* avg.timeGravityAcc.std.X, avg.timeGravityAcc.std.Y, avg.timeGravityAcc.std.Z
  * Description: average value of standard deviation of gravity linear acceleration signal in time domain. This average value is calculated per combination of activity and subject. The variables are for the 3 dimensions (x, y, z respectively).
  * Type: numeric
  * Unit: seconds
* avg.timeBodyAccJerk.mean.X, avg.timeBodyAccJerk.mean.Y, avg.timeBodyAccJerk.mean.Z
  * Description: average value of mean body linear acceleration Jerk time signal. This average value is calculated per combination of activity and subject. The variables are for the 3 dimensions (x, y, z respectively).
  * Type: numeric
  * Unit: seconds
* avg.timeBodyAccJerk.std.X, avg.timeBodyAccJerk.std.Y, avg.timeBodyAccJerk.std.Z
  * Description: average value of standard deviation of body linear acceleration Jerk time signal. This average value is calculated per combination of activity and subject. The variables are for the 3 dimensions (x, y, z respectively).
  * Type: numeric
  * Unit: seconds
* avg.timeBodyGyro.mean.X, avg.timeBodyGyro.mean.Y, avg.timeBodyGyro.mean.Z
  * Description: average value of mean body angular velocity signal in time domain. This average value is calculated per combination of activity and subject. The variables are for the 3 dimensions (x, y, z respectively).
  * Type: numeric
  * Unit: seconds
* avg.timeBodyGyro.std.X, avg.timeBodyGyro.std.Y, avg.timeBodyGyro.std.Z
  * Description: average value of standard deviation of body angular velocity signal in time domain. This average value is calculated per combination of activity and subject. The variables are for the 3 dimensions (x, y, z respectively).
  * Type: numeric
  * Unit: seconds
* avg.timeBodyGyroJerk.mean.X, avg.timeBodyGyroJerk.mean.Y, avg.timeBodyGyroJerk.mean.Z
  * Description: average value of mean body angular velocity Jerk time signal. This average value is calculated per combination of activity and subject. The variables are for the 3 dimensions (x, y, z respectively).
  * Type: numeric
  * Unit: seconds
* avg.timeBodyGyroJerk.std.X, avg.timeBodyGyroJerk.std.Y, avg.timeBodyGyroJerk.std.Z
  * Description: average value of standard deviation of body angular velocity Jerk time signal. This average value is calculated per combination of activity and subject. The variables are for the 3 dimensions (x, y, z respectively).
  * Type: numeric
  * Unit: seconds
* avg.timeBodyAccMag.mean
  * Description: average value of mean magnitude of body linear acceleration in time domain. This average value is calculated per combination of activity and subject. The magnitude of the three-dimensional signals is calculated using the Euclidean norm.
  * Type: numeric
  * Unit: seconds
* avg.timeBodyAccMag.std
  * Description: average value of standard deviation of magnitude of body linear acceleration in time domain. This average value is calculated per combination of activity and subject. The magnitude of the three-dimensional signals is calculated using the Euclidean norm.
  * Type: numeric
  * Unit: seconds
* avg.timeGravityAccMag.mean
  * Description: average value of mean magnitude of gravity linear acceleration in time domain. This average value is calculated per combination of activity and subject. The magnitude of the three-dimensional signals is calculated using the Euclidean norm.
  * Type: numeric
  * Unit: seconds
* avg.timeGravityAccMag.std
  * Description: average value of standard deviation of magnitude of gravity linear acceleration in time domain. This average value is calculated per combination of activity and subject. The magnitude of the three-dimensional signals is calculated using the Euclidean norm.
  * Type: numeric
  * Unit: seconds
* avg.timeBodyAccJerkMag.mean
  * Description: average value of mean magnitude of body linear accelaration Jerk time signal. This average value is calculated per combination of activity and subject. The magnitude of the three-dimensional signals is calculated using the Euclidean norm.
  * Type: numeric
  * Unit: seconds
* avg.timeBodyAccJerkMag.std
  * Description: average value of standard deviation of magnitude of body linear accelaration Jerk time signal. This average value is calculated per combination of activity and subject. The magnitude of the three-dimensional signals is calculated using the Euclidean norm.
  * Type: numeric
  * Unit: seconds
* avg.timeBodyGyroMag.mean
  * Description: average value of mean magnitude of body angular velocity in time domain. This average value is calculated per combination of activity and subject. The magnitude of the three-dimensional signals is calculated using the Euclidean norm.
  * Type: numeric
  * Unit: seconds
* avg.timeBodyGyroMag.std
  * Description: average value of standard deviation of magnitude of body angular velocity in time domain. This average value is calculated per combination of activity and subject. The magnitude of the three-dimensional signals is calculated using the Euclidean norm.
  * Type: numeric
  * Unit: seconds
* avg.timeBodyGyroJerkMag.mean
  * Description: average value of mean magnitude of body angular velocity Jerk time signal. This average value is calculated per combination of activity and subject. The magnitude of the three-dimensional signals is calculated using the Euclidean norm.
  * Type: numeric
  * Unit: seconds
* avg.timeBodyGyroJerkMag.std
  * Description: average value of standard deviation of magnitude of body angular velocity Jerk time signal. This average value is calculated per combination of activity and subject. The magnitude of the three-dimensional signals is calculated using the Euclidean norm.
  * Type: numeric
  * Unit: seconds
* avg.freqBodyAcc.mean.X, avg.freqBodyAcc.mean.Y, avg.freqBodyAcc.mean.Z
  * Description: average value of mean body linear acceleration signal in frequency domain. This average value is calculated per combination of activity and subject. The variables are for the 3 dimensions (x, y, z respectively).
  * Type: numeric
  * Unit: Hertz
* avg.freqBodyAcc.std.X, avg.freqBodyAcc.std.Y, avg.freqBodyAcc.std.Z
  * Description: average value of standard deviation of body linear acceleration signal in frequency domain. This average value is calculated per combination of activity and subject. The variables are for the 3 dimensions (x, y, z respectively).
  * Type: numeric
  * Unit: Hertz
* avg.freqBodyAccJerk.mean.X, avg.freqBodyAccJerk.mean.Y, avg.freqBodyAccJerk.mean.Z
  * Description: average value of mean body linear acceleration Jerk frequency signal. This average value is calculated per combination of activity and subject. The variables are for the 3 dimensions (x, y, z respectively).
  * Type: numeric
  * Unit: Hertz
* avg.freqBodyAccJerk.std.X" "avg.freqBodyAccJerk.std.Y, avg.freqBodyAccJerk.std.Z
  * Description: average value of standard deviation of body linear acceleration Jerk frequency signal. This average value is calculated per combination of activity and subject. The variables are for the 3 dimensions (x, y, z respectively).
  * Type: numeric
  * Unit: Hertz
* avg.freqBodyGyro.mean.X, avg.freqBodyGyro.mean.Y, avg.freqBodyGyro.mean.Z
  * Description: average value of mean body angular velocity signal in frequency domain. This average value is calculated per combination of activity and subject. The variables are for the 3 dimensions (x, y, z respectively).
  * Type: numeric
  * Unit: Hertz
* avg.freqBodyGyro.std.X, avg.freqBodyGyro.std.Y, avg.freqBodyGyro.std.Z
  * Description: average value of standard deviation of body angular velocity signal in frequency domain. This average value is calculated per combination of activity and subject. The variables are for the 3 dimensions (x, y, z respectively).
  * Type: numeric
  * Unit: Hertz
* avg.freqBodyAccMag.mean
  * Description: average value of mean magnitude of body linear acceleration in frequency domain. This average value is calculated per combination of activity and subject. The magnitude of the three-dimensional signals is calculated using the Euclidean norm.
  * Type: numeric
  * Unit: Hertz
* avg.freqBodyAccMag.std
  * Description: average value of standard deviation of magnitude of body linear acceleration in frequency domain. This average value is calculated per combination of activity and subject. The magnitude of the three-dimensional signals is calculated using the Euclidean norm.
  * Type: numeric
  * Unit: Hertz
* avg.freqBodyBodyAccJerkMag.mean
  * Description: average value of mean magnitude of body linear accelaration Jerk frequency signal. This average value is calculated per combination of activity and subject. The magnitude of the three-dimensional signals is calculated using the Euclidean norm.
  * Type: numeric
  * Unit: Hertz
* avg.freqBodyBodyAccJerkMag.std
  * Description: average value of standard deviation of magnitude of body linear accelaration Jerk frequency signal. This average value is calculated per combination of activity and subject. The magnitude of the three-dimensional signals is calculated using the Euclidean norm.
  * Type: numeric
  * Unit: Hertz
* avg.freqBodyBodyGyroMag.mean
  * Description: average value of mean magnitude of body angular velocity in frequency domain. This average value is calculated per combination of activity and subject. The magnitude of the three-dimensional signals is calculated using the Euclidean norm.
  * Type: numeric
  * Unit: Hertz
* avg.freqBodyBodyGyroMag.std
  * Description: average value of standard deviation of magnitude of body angular velocity in frequency domain. This average value is calculated per combination of activity and subject. The magnitude of the three-dimensional signals is calculated using the Euclidean norm.
  * Type: numeric
  * Unit: Hertz
* avg.freqBodyBodyGyroJerkMag.mean
  * Description: average value of mean magnitude of body angular velocity Jerk frequency signal. This average value is calculated per combination of activity and subject. The magnitude of the three-dimensional signals is calculated using the Euclidean norm.
  * Type: numeric
  * Unit: Hertz
* avg.freqBodyBodyGyroJerkMag.std
  * Description: average value of standard deviation of magnitude of body angular velocity Jerk frequency signal. This average value is calculated per combination of activity and subject. The magnitude of the three-dimensional signals is calculated using the Euclidean norm.
  * Type: numeric
  * Unit: Hertz
