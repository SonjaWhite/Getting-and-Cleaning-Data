#Codebook for Getting and Cleaning Data-Course Project
Sonja White
04/26/2015


#Project Description

	*The purpose of this project was to download data from the [UCI HAR Dataset]
	(http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) 
	*Merge the training and test sets to create one data set
	*Extract measurements on the mean and standard deviation for each variable
	*Use descriptive activity names to name the activities in the data set
	*Appropriately label the data set with descriptive variable names
	*Create a second, independent tidy data set, with the average of each variable for 
	each activity and each subject.
		
#Guide to create and clean the tidy data set

	1. Download data from the UCI HAR Dataset
	2. Combine raw data in x_train.txt with y_train.txt and subject_train.txt
	3. Combine raw data in x_test.txt with Y_test.txt and subject_train.txt
	4. Merge the two datasets above to create one dataset
	5. Extract measurements on the mean and standard deviation for each measurement
	6. Replace numbers for activities with descriptive names using activity_labels.txt
	7. Make variable names more descriptive and readable
	
#Guide to create second tidy data set 

	1. Group the data set created above by subject and activity using group_by
	2. Determine the mean for each measurement for each subject and activity using 
		summarise_each
	3. Return the dataset (avgdata) created in step 2


#Variables for avgdata

The raw data used in computing the means for this dataset comes from the accelerometer
and gyroscope 3-azial raw signals tAcc-XYZ and tGyro-XYZ.  
the "t'" prefix in the variable names represents time domain signals.
the "f" prefix in the variable names represents frequency domain signals
Acc is an abbreviation for acceleration



avgdata is a dataset 180 X 81

                   Variable             Class
1                   subject            integer
2                  activity            factor w/6 levels
3            tBodyAccMean.X            number
4            tBodyAccMean.Y            number
5            tBodyAccMean.Z            number
6             tBodyAccStd.X            number
7             tBodyAccStd.Y            number
8             tBodyAccStd.Z            number
9         tGravityAccMean.X            number
10        tGravityAccMean.Y            number
11        tGravityAccMean.Z            number
12         tGravityAccStd.X            number
13         tGravityAccStd.Y            number
14         tGravityAccStd.Z            number
15       tBodyAccJerkMean.X            number
16       tBodyAccJerkMean.Y            number
17       tBodyAccJerkMean.Z            number
18        tBodyAccJerkStd.X            number
19        tBodyAccJerkStd.Y            number
20        tBodyAccJerkStd.Z            number
21          tBodyGyroMean.X            number
22          tBodyGyroMean.Y            number
23          tBodyGyroMean.Z            number
24           tBodyGyroStd.X            number
25           tBodyGyroStd.Y            number
26           tBodyGyroStd.Z            number
27      tBodyGyroJerkMean.X            number
28      tBodyGyroJerkMean.Y            number
29      tBodyGyroJerkMean.Z            number
30       tBodyGyroJerkStd.X            number
31       tBodyGyroJerkStd.Y            number
32       tBodyGyroJerkStd.Z            number
33          tBodyAccMagMean            number
34           tBodyAccMagStd            number
35       tGravityAccMagMean            number
36        tGravityAccMagStd            number
37      tBodyAccJerkMagMean            number
38       tBodyAccJerkMagStd            number
39         tBodyGyroMagMean            number
40          tBodyGyroMagStd            number
41     tBodyGyroJerkMagMean            number
42      tBodyGyroJerkMagStd            number
43           fBodyAccMean.X            number
44           fBodyAccMean.Y            number
45           fBodyAccMean.Z            number
46            fBodyAccStd.X            number
47            fBodyAccStd.Y            number
48            fBodyAccStd.Z            number
49       fBodyAccMeanFreq.X            number
50       fBodyAccMeanFreq.Y            number
51       fBodyAccMeanFreq.Z            number
52       fBodyAccJerkMean.X            number
53       fBodyAccJerkMean.Y            number
54       fBodyAccJerkMean.Z            number
55        fBodyAccJerkStd.X            number
56        fBodyAccJerkStd.Y            number
57        fBodyAccJerkStd.Z            number
58   fBodyAccJerkMeanFreq.X            number
59   fBodyAccJerkMeanFreq.Y            number
60   fBodyAccJerkMeanFreq.Z            number
61          fBodyGyroMean.X            number
62          fBodyGyroMean.Y            number
63          fBodyGyroMean.Z            number
64           fBodyGyroStd.X            number
65           fBodyGyroStd.Y            number
66           fBodyGyroStd.Z            number
67      fBodyGyroMeanFreq.X            number
68      fBodyGyroMeanFreq.Y            number
69      fBodyGyroMeanFreq.Z            number
70          fBodyAccMagMean            number
71           fBodyAccMagStd            number
72      fBodyAccMagMeanFreq            number
73      fBodyAccJerkMagMean            number
74       fBodyAccJerkMagStd            number
75  fBodyAccJerkMagMeanFreq            number
76         fBodyGyroMagMean            number
77          fBodyGyroMagStd            number
78     fBodyGyroMagMeanFreq            number
79     fBodyGyroJerkMagMean            number
80      fBodyGyroJerkMagStd            number
81 fBodyGyroJerkMagMeanFreq            number 