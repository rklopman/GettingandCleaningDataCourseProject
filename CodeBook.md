#CodeBook Getting and Cleaning Data Course Project
#Introduction
This is the codebook of the data produced by running the script run_analysis.R on smartphone. 
#Variables
##Fixed variables
Fixed variables are:
* activity.id: identification of activity
  Type: integer
  Unit: not applicable
* activity.name: short name of activity (e.g., WALKING)
  Type: character
  Unit: not applicable
* subject.id: identification of subject (person) doing the activity
  Type: integer
  Unit: not applicable
##Measured variables
#Summary choices and study design
##Summary choices
Measured variables are calculated by taking the average value of the original measured variables that are extracted.
This is done per combination of activity and subject.
##Study design
The data is collected from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.
The input data contains 10299 observations with 561 measured variables.


