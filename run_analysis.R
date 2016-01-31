#This script takes smartphone data from the R working directory as input, summarizes estimated variables that are mean values and standard deviations by taking their average by activity an subject. It also adds activity names and cleans up variable names. The results are stored into the variable 'avgActSubjMeanStdData' and written to the file 'analysis_results.txt' in the R working directory.
#Please refer to README.md and CodeBook.md for more information.

#0: Read data

#Set directories
dataDir <- "UCI HAR Dataset"
trainDir <- "train"
testDir <- "test"

#Read variable names for measurements
featuresFile <- "features.txt"
features <-
    read.table(
        paste(dataDir, featuresFile, sep = "\\"), sep = "", colClasses = c("integer", "character"), col.names =
            c("feature.id", "feature.name"), stringsAsFactors = FALSE, header = FALSE
    )

#Read mapping between activity ids and activity names
activityLabelsFile <- "activity_labels.txt"
activityLabels <-
    read.table(
        paste(dataDir, activityLabelsFile, sep = "\\"), sep = "", colClasses = c("integer", "character"), col.names =
            c("activity.id", "activity.name"), stringsAsFactors = FALSE, header = FALSE
    )

#Read measurements
trainDataFile <- "X_train.txt"
testDataFile <- "X_test.txt"
trainData <-
    read.table(
        paste(dataDir, trainDir,trainDataFile, sep = "\\"), sep = "", colClasses = "numeric", col.names =
            features[,2], check.names = FALSE, stringsAsFactors = FALSE, header = FALSE
    )
testData <-
    read.table(
        paste(dataDir, testDir,testDataFile, sep = "\\"), sep = "", colClasses = "numeric", col.names =
            features[,2], check.names = FALSE, stringsAsFactors = FALSE, header = FALSE
    )

#Read activity ids for measurements
trainActivitiesFile <- "y_train.txt"
testActivitiesFile <- "y_test.txt"
trainActivities <-
    read.table(
        paste(dataDir, trainDir,trainActivitiesFile, sep = "\\"), sep = "", colClasses = "integer", col.names =
            "activity.id", stringsAsFactors = FALSE, header = FALSE
    )
testActivities <-
    read.table(
        paste(dataDir, testDir,testActivitiesFile, sep = "\\"), sep = "", colClasses = "integer", col.names =
            "activity.id", stringsAsFactors = FALSE, header = FALSE
    )

#Read subject ids (people ids) for measurements
trainSubjectsFile <- "subject_train.txt"
testSubjectsFile <- "subject_test.txt"
trainSubjects <-
    read.table(
        paste(dataDir, trainDir,trainSubjectsFile, sep = "\\"), sep = "", colClasses = "integer", col.names =
            "subject.id", stringsAsFactors = FALSE, header = FALSE
    )
testSubjects <-
    read.table(
        paste(dataDir, testDir,testSubjectsFile, sep = "\\"), sep = "", colClasses = "integer", col.names =
            "subject.id", stringsAsFactors = FALSE, header = FALSE
    )


#1: Merge the training and the test sets to create one data set

mergedData <- rbind(trainData, testData)
mergedActivities <- rbind(trainActivities, testActivities)
mergedSubjects <- rbind(trainSubjects, testSubjects)


#2: Extracts only the measurements on the mean and standard deviation for each measurement

#Only pairs of mean and standard deviation of measurements are included
#For example tBodyAcc-mean()-X and tBodyAcc-std()-X are included, but angle(X,gravityMean) and fBodyAcc-meanFreq()-X are excluded

mergedMeanStdIndex <-
    grep(pattern = "(mean\\(\\))|(std\\(\\))", x = names(mergedData), ignore.case = TRUE)
mergedMeanStdData <- mergedData[,mergedMeanStdIndex]


#3: Use descriptive activity names to name the activities in the data set

#Also the subject ids are added for future use

mergedActSubjMeanStdData <-
    cbind(mergedActivities, mergedSubjects, mergedMeanStdData)
mergedActSubjMeanStdData <-
    merge(activityLabels, mergedActSubjMeanStdData, by = "activity.id", all =
              TRUE)


#4: Appropriately label the data set with descriptive variable names

#In the measurement variables, all (sequences of) non digits and non letters are converted to a period (.)
#Initial letters 't' and 'f' are converted to 'time' and 'freq' respectively in order to make names more readable

names(mergedActSubjMeanStdData)[-1:-3] <-
    gsub("[^0-9a-zA-Z]+", ".", names(mergedActSubjMeanStdData[-1:-3]))
names(mergedActSubjMeanStdData)[-1:-3] <-
    gsub("[^0-9a-zA-Z]$", "", names(mergedActSubjMeanStdData[-1:-3]))
names(mergedActSubjMeanStdData)[-1:-3] <-
    gsub("^t([Bb]ody|[Gg]ravity)", "time\\1", names(mergedActSubjMeanStdData[-1:-3]))
names(mergedActSubjMeanStdData)[-1:-3] <-
    gsub("^f([Bb]ody|[Gg]ravity)", "freq\\1", names(mergedActSubjMeanStdData[-1:-3]))


#5: From the data set, create a second, independent tidy data set with the average of each variable for each activity and each subject

#The dplyr package is loaded
#Variables are grouped by activity and by subject
#Over the groups, the average of the non grouping variables is calculated
#The result is written to a file

#The data set is tidy:
#1. Each variable forms a column
#2. Each observation forms a row
#3. Each type of observational unit forms a table
#Fixed variables describe the experimental design and are known in advance. Measured variables are what we actually measure in the study.
#In this case, these are activity and subject
#These variables come first, followed by measured variables, each ordered so that related variables are contiguous. Rows can then be ordered by the rst variable, breaking ties with the second and subsequent (xed) variables.

if (!require("dplyr")) {
    install.packages("dplyr")
    library(dplyr)
}
mergedActSubjMeanStdGroups <-
    group_by(mergedActSubjMeanStdData, activity.id, activity.name, subject.id)
avgActSubjMeanStdData <-
    summarise_each(mergedActSubjMeanStdGroups, "mean")
names(avgActSubjMeanStdData)[-1:-3] <-
    paste("avg", names(avgActSubjMeanStdData)[-1:-3], sep = ".")
write.table(
    avgActSubjMeanStdData, "analysis_results.txt", sep = " ", row.names = FALSE
)
