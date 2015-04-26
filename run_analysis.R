library(dplyr)
train <- read.table("./UCI HAR Dataset/train/x_train.txt")
labels_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
test <- read.table("./UCI HAR Dataset/test/x_test.txt")
labels_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
features <- read.table("./UCI HAR Dataset/features.txt")
activities <- read.table("./UCI HAR Dataset/activity_labels.txt")
features_names <- as.character(features[, 2])
traindata <- cbind(subject_train, labels_train, train)
testdata <- cbind(subject_test, labels_test, test)
alldata <- rbind(traindata, testdata)
colnames(alldata) <- (c("subject", "activity", features_names))
var <- grep("subject|activity|mean|std", colnames(alldata), value = TRUE)
alldata_sub <- alldata[, var]
alldata_sub$activity <- activities$V2[alldata_sub$activity]
var <- gsub("-", "", var)
var <- gsub("\\()","", var)
var <- gsub("me", "Me", var)
var <- gsub("st", "St", var)
var <- gsub("BodyBody", "Body", var)
var <- gsub("X", ".X", var)
var <- gsub("Y", ".Y", var)
var <- gsub("Z", ".Z", var)
names(alldata_sub) <- var
grouped <- group_by(alldata_sub, subject, activity)
avgdata <- summarise_each(grouped, funs(mean))
avgdata

        

            


