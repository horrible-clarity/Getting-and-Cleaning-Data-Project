## Code Book

A full description of the data used in this project can be found at the [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The data is sourced from [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

As described by the UCI Machine Learning Repository the original data are generated by the following means:

>The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

>Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

>Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

>These signals were used to estimate variables of the feature vector for each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


### This data set
This data set contains the following variables:

* `subject` - The subjects ID
* `activity` - The label of the activity performed when the corresponding measurements were taken:

	* `WALKING` 
	* `WALKING_UPSTAIRS`
	* `WALKING_DOWNSTAIRS`
	* `SITTING`
	* `STANDING`
	* `LAYING`

#### Time domain data
Time domain data is prefixed with the letter 't', all data given have the suffix 'Mean' or 'Std' indicating the data in that column represent the mean (average) or standard deviation of that measurement. 

* `tBodyAccMag`
* `tGravityAccMag`
* `tBodyAccJerkMag`
* `tBodyGyroMag`
* `tBodyAccMag`
* `tBodyAccJerkMag`
* `tBodyGyroJerkMag`

Some data is further suffixed with 'X, 'Y' or 'Z' indicating the angle that measurement was taken in:

* `tBodyAcc`
* `tGravityAcc`
* `tBodyAccJerk`
* `tBodyGyro`
* `tBodyGyroJerk`

#### Frequency domain data
Frequency domain data is is prefixed with the letter 'f', all data given have the suffix 'Mean' or 'Std' indicating the data in that column represent the mean (average) or standard deviation of that measurement. 

* `fBodyAccMag`
* `fBodyBodyAccJerkMag`
* `fBodyBodyGyroMag`
* `fBodyBodyGyroJerkMag`

Some data is further suffixed with 'X, 'Y' or 'Z' indicating the angle that measurement was taken in:

* `fBodyAcc`
* `fBodyAccJerk`
* `fBodyGyro`



