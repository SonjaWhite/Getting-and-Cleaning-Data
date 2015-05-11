#Codebook for Getting and Cleaning Data-Course Project
Sonja White
04/26/2015


#Project Description

	* The purpose of this project was to download data from the [UCI HAR Dataset]
	  (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) 
	* Merge the training and test sets to create one data set
	* Extract measurements on the mean and standard deviation for each variable
	* Use descriptive activity names to name the activities in the data set
	* Appropriately label the data set with descriptive variable names
	* Create a second, independent tidy data set, with the average of each variable for 
	  each activity and each subject.
		
##Create and clean a tidy data set from the UCI HAR Dataset

	1. Download data from the UCI HAR Dataset
	2. Combine raw data in x_train.txt with y_train.txt and subject_train.txt
	3. Combine raw data in x_test.txt with Y_test.txt and subject_train.txt
	4. Merge the two datasets above to create one dataset
	5. Extract measurements on the mean and standard deviation for each measurement
	6. Replace numbers for activities with descriptive names using activity_labels.txt
	7. Make variable names more descriptive and readable
	
##Create second tidy data set that contains mean for each variable for each subject and
	each activity

	1. Group the data set created above by subject and activity using group_by
	2. Determine the mean for each measurement for each subject and activity using 
		summarise_each
	3. Return the dataset (avgdata) created in step 2


##Variables for avgdata

The raw data used in computing the means for this dataset comes from the accelerometer
and gyroscope 3-azial raw signals tAcc-XYZ and tGyro-XYZ.  
the "t'" prefix in the variable names represents time domain signals.
the "f" prefix in the variable names represents frequency domain signals
Acc is an abbreviation for acceleration



avgdata is a dataset 180 X 81

* subject | integer"
"* activity | factor"
"* tBodyAccMean.X | numeric"
"* tBodyAccMean.Y | numeric"
"* tBodyAccMean.Z | numeric"
"* tBodyAccStd.X | numeric"
"* tBodyAccStd.Y | numeric"
"* tBodyAccStd.Z | numeric"
"* tGravityAccMean.X | numeric"
"* tGravityAccMean.Y | numeric"
"* tGravityAccMean.Z | numeric"
"* tGravityAccStd.X | numeric"
"* tGravityAccStd.Y | numeric"
"* tGravityAccStd.Z | numeric"
"* tBodyAccJerkMean.X | numeric"
"* tBodyAccJerkMean.Y | numeric"
"* tBodyAccJerkMean.Z | numeric"
"* tBodyAccJerkStd.X | numeric"
"* tBodyAccJerkStd.Y | numeric"
"* tBodyAccJerkStd.Z | numeric"
"* tBodyGyroMean.X | numeric"
"* tBodyGyroMean.Y | numeric"
"* tBodyGyroMean.Z | numeric"
"* tBodyGyroStd.X | numeric"
"* tBodyGyroStd.Y | numeric"
"* tBodyGyroStd.Z | numeric"
"* tBodyGyroJerkMean.X | numeric"
"* tBodyGyroJerkMean.Y | numeric"
"* tBodyGyroJerkMean.Z | numeric"
"* tBodyGyroJerkStd.X | numeric"
"* tBodyGyroJerkStd.Y | numeric"
"* tBodyGyroJerkStd.Z | numeric"
"* tBodyAccMagMean. | numeric"
"* tBodyAccMagStd. | numeric"
"* tGravityAccMagMean. | numeric"
"* tGravityAccMagStd. | numeric"
"* tBodyAccJerkMagMean. | numeric"
"* tBodyAccJerkMagStd. | numeric"
"* tBodyGyroMagMean. | numeric"
"* tBodyGyroMagStd. | numeric"
"* tBodyGyroJerkMagMean. | numeric"
"* tBodyGyroJerkMagStd. | numeric"
"* fBodyAccMean.X | numeric"
"* fBodyAccMean.Y | numeric"
"* fBodyAccMean.Z | numeric"
"* fBodyAccStd.X | numeric"
"* fBodyAccStd.Y | numeric"
"* fBodyAccStd.Z | numeric"
"* fBodyAccMeanFreq.X | numeric"
"* fBodyAccMeanFreq.Y | numeric"
"* fBodyAccMeanFreq.Z | numeric"
"* fBodyAccJerkMean.X | numeric"
"* fBodyAccJerkMean.Y | numeric"
"* fBodyAccJerkMean.Z | numeric"
"* fBodyAccJerkStd.X | numeric"
"* fBodyAccJerkStd.Y | numeric"
"* fBodyAccJerkStd.Z | numeric"
"* fBodyAccJerkMeanFreq.X | numeric"
"* fBodyAccJerkMeanFreq.Y | numeric"
"* fBodyAccJerkMeanFreq.Z | numeric"
"* fBodyGyroMean.X | numeric"
"* fBodyGyroMean.Y | numeric"
"* fBodyGyroMean.Z | numeric"
"* fBodyGyroStd.X | numeric"
"* fBodyGyroStd.Y | numeric"
"* fBodyGyroStd.Z | numeric"
"* fBodyGyroMeanFreq.X | numeric"
"* fBodyGyroMeanFreq.Y | numeric"
"* fBodyGyroMeanFreq.Z | numeric"
"* fBodyAccMagMean. | numeric"
"* fBodyAccMagStd. | numeric"
"* fBodyAccMagMeanFreq. | numeric"
"* fBodyAccJerkMagMean. | numeric"
"* fBodyAccJerkMagStd. | numeric"
"* fBodyAccJerkMagMeanFreq. | numeric"
"* fBodyGyroMagMean. | numeric"
"* fBodyGyroMagStd. | numeric"
"* fBodyGyroMagMeanFreq. | numeric"
"* fBodyGyroJerkMagMean. | numeric"
"* fBodyGyroJerkMagStd. | numeric"
"* fBodyGyroJerkMagMeanFreq. | numeric"
