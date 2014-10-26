## Getting and Cleaning Data Project
*A project for the Coursera course* [Getting and Cleaning Data](https://www.coursera.org/course/getdata)

### run_analysis.R

This script takes the [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) and produces a combined, cleaned and tidied version and a summary of the data by subject and activity. 

Specifically it does the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

### Running the script
*Assumes the script is run in a directory containing the Smartphone Data directory "UCI HAR Dataset"*

Upon running the script:
    `source("run_analysis.R")`
It should produce 2 text files 'clean\_data.txt' and 'summary.txt'. clean\_data.txt is the output of step 4, while summary.txt is the output of step 5.