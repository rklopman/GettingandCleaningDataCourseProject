#Explanation for script run_analysis.R
#Introduction
##Summary and usage
The script takes smartphone data from the R working directory as input, summarizes estimated variables that are mean values and standard deviations by taking their average by activity an subject. It also adds activity names and cleans up variable names. The results are stored into the variable 'avgActSubjMeanStdData' and written to the file 'analysis_results.txt' in the R working directory.
##Input data
The input data is assumed to be in a folder 'UCI HAR Dataset'.
The data contains recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.
In addition there are estimated variables and also additional vectors obtained by averaging the signals in a signal window sample.
The following parts are used by the script:
* test data in directory 'UCI HAR Dataset/test':
  * test/X_test.txt: estimated variables and additional vectors
  * test/y_test.txt: identifiers of activities performed (e.g., WALKING)
  * test/subject_test.txt: identifiers of subjects (persons) performing the activities
* train data in directory 'UCI HAR Dataset/train':
  * X_train.txt: estimated variables and additional vectors
  * y_train.txt: identifiers of activities performed (e.g., WALKING)
  * subject_train.txt: identifiers of subjects (persons) performing the activities
* metadata in directory 'UCI HAR Dataset':
  * activity_labels.txt: cross reference between identifiers of activities and their short names
  * features.txt: names of measurement variables

The script does not use the signal recordings themselves.
For more information on the input data, please refer to:
* http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
* The file 'features_info.txt' in the directory 'UCI HAR Dataset' of the input data or in this GitHub repository

##Output data
The output is written to the file 'analysis_results.txt' in the R working directory.
For more information on the output data please refer to file 'CodeBook.md' in this GitHub repository.
#Transformations by the script
##Logic
The script merges the estimated variables and additional vectors of the test and train data.
Only estimated variables that are mean values or standard deviations are extracted.

Variable names, identications and short names of activities, and identifiers of subjects are added.
Variable names are cleaned up: non digits and letters are replaced by a period ('.'). In addition, abbrevations 't' and 'f' for time and frequency are replaced by 'time' and 'freq' in order to make names more readable.

The estimated variables are summarized by taking their average by combinations of activities and subjects.
Variable names are modified accordingly to show that the estimated variables are summarized.
##Steps
The script does the following steps:
* 0) Read data
  * Set directories
  * Read variable names for measurements
  * Read mapping between activity ids and activity names
  * Read measurements
  * Read activity ids for measurements
  * Read subject ids (people ids) for measurements
* 1)Merge the training and the test sets to create one data set
* 2) Extracts only the measurements on the mean and standard deviation for each measurement
  * Only pairs of mean and standard deviation of measurements are included
  * For example tBodyAcc-mean()-X and tBodyAcc-std()-X are included, but angle(X,gravityMean) and fBodyAcc-meanFreq()-X are excluded
* 3) Use descriptive activity names to name the activities in the data set
  * Also the subject ids are added for future use
* 4) Appropriately label the data set with descriptive variable names
  * In the measurement variables, all (sequences of) non digits and non letters are converted to a period (.)
  * Initial letters 't' and 'f' are converted to 'time' and 'freq' respectively in order to make names more readable
* 5) From the data set, create a second, independent tidy data set with the average of each variable for each activity and each subject
  * The dplyr package is loaded
  * Variables are grouped by activity and by subject
  * Over the groups, the average of the non grouping variables is calculated
  * The result is written to a file
