### run_analysis.R

# load required libraries


require(data.table)

# Load source data files
trainingSet <- read.table("UCI_HAR_Dataset/train/X_train.txt")
trainingLabels <- read.table("UCI_HAR_Dataset/train/y_train.txt")
subjectTrain <- read.table("UCI_HAR_Dataset/train/subject_train.txt")
testSet <- read.table("UCI_HAR_Dataset/test/X_test.txt")
testLabels <- read.table("UCI_HAR_Dataset/test/y_test.txt")
subjectTest <- read.table("UCI_HAR_Dataset/test/subject_test.txt")
features <- read.table("UCI_HAR_Dataset/features.txt")
activityLabels <- read.table("UCI_HAR_Dataset/activity_labels.txt")

# Add labels to base datasets
names(trainingSet) <- features$V2
names(testSet) <- features$V2
names(trainingLabels) <- "activity"
names(testLabels) <- "activity"
names(activityLabels) <- c("activityId","activity")
names(subjectTrain) <- "subject"
names(subjectTest) <- "subject"

# (2) Extracts only the measurements on the mean and standard deviation for each measurement. 
mean_std_labels <- grep("(mean\\(|std\\())", features$V2)
testSet <- testSet[, mean_std_labels]
trainingSet <- trainingSet[, mean_std_labels]

# (1) Merges the training and the test sets to create one data set.
## Create training  and test datasets
trainData <- cbind(subjectTrain,trainingLabels,trainingSet)
testData <- cbind(subjectTest,testLabels,testSet)
## Create "the one" dataset
UCIData <- rbind(trainData, testData)

# (3) Uses descriptive activity names to name the activities in the data set
UCIData$activity <- factor(UCIData$activity, levels = activityLabels[,1], labels = activityLabels[,2])

# (4)Appropriately label the data set with descriptive variable names
columns <-names(UCIData)
for (n in 1:length(columns)) {
        columns[n] <- gsub("^t", "time", columns[n])
        columns[n] <- gsub("^f", "freq", columns[n])
        columns[n] <- gsub("std", "stdDev", columns[n])
        columns[n] <- gsub("Mag", "Magnitude", columns[n])
        columns[n] <- gsub("Acc", "Acceleration", columns[n])
        columns[n] <- gsub("Gyro", "Gyroscope", columns[n])
        columns[n] <- gsub("BodyBody", "Body", columns[n])
}
names(UCIData) <- columns

# (5) create a second, independent tidy data set with the average of each variable for each activity and each subject.
UCIData$subject <- factor(UCIData$subject)
tidyData <- aggregate(UCIData[,names(UCIData) != c('subject','activity')],by=list(subject=UCIData$subject, activity=UCIData$activity), FUN=mean)
write.table(tidyData,"tidydata.txt",row.name=FALSE)

