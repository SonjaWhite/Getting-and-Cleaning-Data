#set working directory to directory that contains data from the UCI HAR Dataset
library(dplyr)

#read in data for train and test datasets
train <- read.table("x_train.txt")
labels_train <- read.table("y_train.txt")
subject_train <- read.table("subject_train.txt")
test <- read.table("x_test.txt")
labels_test <- read.table("y_test.txt")
subject_test <- read.table("subject_test.txt")

#read in features (varaibles) for datasets, convert to character, subset out column with variable names
features <- read.table("features.txt")
features_names <- as.character(features[, 2])

#read in description of each activity for levels 1:6
activities <- read.table("activity_labels.txt")

#combine train and test data with subject and activity labels
traindata <- cbind(subject_train, labels_train, train)
testdata <- cbind(subject_test, labels_test, test)

#combine the training data and test data and name columns
alldata <- rbind(traindata, testdata)
colnames(alldata) <- (c("subject", "activity", features_names))

#extract column names to be included in tidy data set
var <- grep("subject|activity|mean|std", colnames(alldata), value = TRUE)

#subset alldata to include all rows, and columns extracted in step above
alldata_sub <- alldata[, var]

#convert factor levels in activity column to descriptions of activities
alldata_sub$activity <- activities$V2[alldata_sub$activity]

#clean up variable names-remove illegal characters and duplicate words, improve readability with Camelcase
var <- gsub("-", "", var)
var <- gsub("\\()",".", var)
var <- gsub("me", "Me", var)
var <- gsub("st", "St", var)
var <- gsub("BodyBody", "Body", var)
names(alldata_sub) <- var

#Group by subject and activity. Find the mean of each variable for each subject and each activity.
grouped <- group_by(alldata_sub, subject, activity)
avgdata <- summarise_each(grouped, funs(mean))

write.table(avgdata, "./avgdata.txt", row.names = FALSE)

        

            

