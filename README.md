# Getting-and-Cleaning-Data
The R script, run_analysis.R, reads in data from the UCI HAR Dataset. It combines the raw 
data in x_train.txt with the activity labels in Y-train.txt and the subject labels in 
subject_train.txt to create the dataset, traindata. It combines the raw data in x_test.txt
with the activity labels in y_test.txt and the subject labels in subject_test.txt to 
create the dataset, testdata. Traindata and testdata are merged to create one dataset, all
data, that contains all of the train and test data. The variable names for the raw data 
contained in features.txt are converted to character data and combined with names for the
subject and activity columns to assign column names to alldata.  Alldata is subsetted to
create alldata_sub which contains the subject, activity, and only the variables(column 
names) that contain mean or std in their name. Descriptive names for the activities in 
activity_labels. txt are used to replace the numbers in the activities columns with the 
activity name.  The variable names are edited to make them more readable. These 
characters, ("-", "()"), are removed as they are reserved characters and can interfer 
with data analysis. Camelcase is used to make the long varaible names more readable. A 
"." is used before X,Y, and Z to improve readability. Due to the length of the variable 
names, further description of the variables is available in the codebook. Alldata_sub is
grouped by subject and activity using group_by in the dplyr package. The mean for each 
measurement for each subject and activity is determined using summarise_each in the 
dplyr package. The dataset, avgdata, is returned and contains the average of each 
variable in alldata_sub for each activity and each subject.
