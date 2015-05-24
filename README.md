#Getting and Cleaning Data - Course Project

##Synopsis
The goal of this project is to collect and clean a dataset and prepare a tidy dataset that can be used for later analysis. The dataset used for this project represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site below: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The following is the data used for this project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


The R script called 'run_analysis.R' added to this repo does the following:

Step 1:
Loads X and y train and test sets and merges them to create one data set.

Step 2:
Extracts only the measurements on the mean and standard deviation for each measurement. 

Step 3:
Replaces the activity numbers with descriptive activity names to name the activities in the data set. Labels from activity_labels.txt are used for this purpose.

Step 4:
Appropriately labels the data set with descriptive variable names. The original variable names were modified to make them more descriptive. A new codebook.md is added to the repo.

Step 5:
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
The tidy data set is written to a file and uploaded on to the course submission website.