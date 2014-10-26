## Code Book

### ID

* `subject` - The subjects ID
* `activity` - The label of the activity performed when the corresponding measurements were taken:

	* `WALKING` 
	* `WALKING_UPSTAIRS`
	* `WALKING_DOWNSTAIRS`
	* `SITTING`
	* `STANDING`
	* `LAYING`

### Data

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

Frequency domain data is is prefixed with the letter 't', all data given have the suffix 'Mean' or 'Std' indicating the data in that column represent the mean (average) or standard deviation of that measurement. 

* `fBodyAccMag`
* `fBodyBodyAccJerkMag`
* `fBodyBodyGyroMag`
* `fBodyBodyGyroJerkMag`

Some data is further suffixed with 'X, 'Y' or 'Z' indicating the angle that measurement was taken in:

* `fBodyAcc`
* `fBodyAccJerk`
* `fBodyGyro`



