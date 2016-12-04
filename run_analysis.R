library(dplyr)
#download project data and unzip
projectZip <- "projectData.zip";
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", projectZip, mode="wb");
unzip(projectZip, overwrite=TRUE);

## read features and activities into vectors
features <- read.table("UCI HAR Dataset/features.txt", sep = "", header = FALSE)[2];
activities <- read.table("UCI HAR Dataset/activity_labels.txt", sep = "", header = FALSE);

## Step 1 merge test/train datasets ###########################################
## read test/train datasets
testSet <- read.table("UCI HAR Dataset/test/X_test.txt", sep = "", header = FALSE);
trainSet <- read.table("UCI HAR Dataset/train/X_train.txt", sep = "", header = FALSE);
mergedData <- rbind(testSet, trainSet)

## read movement files
testMoves <- read.table("UCI HAR Dataset/test/Y_test.txt", sep = "", header = FALSE)
trainMoves <- read.table("UCI HAR Dataset/train/Y_train.txt", sep = "", header = FALSE)
allMoves <- rbind(testMoves, trainMoves)

##Reading PersonID
testSubject <- read.table("UCI HAR Dataset/test/subject_test.txt", sep = "", header = FALSE)
trainSubject <- read.table("UCI HAR Dataset/train/subject_train.txt", sep = "", header = FALSE)
allSubjects <- rbind(testSubject, trainSubject)

## Step 2: assign var names and extract the variables which we need ############
mergedData <- mergedData[,features[grep("-mean[^a-z]|std", features[ ,1], ignore.case=TRUE),]]
names(mergedData) <- features[grep("-mean[^a-z]|std", features[ ,1], ignore.case=TRUE),] 

## Steps 3 and 4:  join datasets so that the Activity names can be added #######
allMoves <- merge(allMoves, activities, by.x = "V1", by.y = "V1")[2]
##combine activities, subjects and measurements into 1 dataset
mergedData <- cbind(allSubjects, allMoves, mergedData)
## provide variable names for the subject and activity variables
names(mergedData)[1:2] <- c("SubjectID", "Activity")

## Step 5:  creates a second, independent tidy data set with the average of each variable for each activity and each subject
## perform aggregation and write out final dataset
groupedData <- group_by(mergedData, Activity, SubjectID) %>% summarise_all(mean)
write.table(groupedData, "tidyDataGrouped.txt", row.names=FALSE, col.names = TRUE)

## to read the dataset, run:
## read.table("tidyDataGrouped.txt", header = TRUE)




















