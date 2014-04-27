## Read in relevant data files
subject_train <- read.table('UCI HAR Dataset/train/subject_train.txt')
X_train <- read.table('UCI HAR Dataset/train/X_train.txt')
y_train <- read.table('UCI HAR Dataset/train/y_train.txt')
subject_test <- read.table('UCI HAR Dataset/test/subject_test.txt')
X_test <- read.table('UCI HAR Dataset/test/X_test.txt')
y_test <- read.table('UCI HAR Dataset/test/y_test.txt')

activity_labels <- read.table('UCI HAR Dataset/activity_labels.txt')
features <- read.table('UCI HAR Dataset/features.txt')

## Format variable names and classes
names(subject_train) <- 'subjectID'
subject_train$subjectID <- as.factor(subject_train$subjectID)
names(subject_test) <- 'subjectID'
subject_test$subjectID <- as.factor(subject_test$subjectID)
names(y_train) <- 'activity_code'
y_train$activity_code <- as.factor(y_train$activity_code)
names(y_test)  <- 'activity_code'
y_test$activity_code <- as.factor(y_test$activity_code)
names(activity_labels) <- c('activity_code','activity_name')
activity_labels$activity_code <- as.factor(activity_labels$activity_code)
names(features) <- c('feature_code','feature_name')
features$feature_code <- as.factor(features$feature_code)
names(X_train) <- as.character(features$feature_name)
names(X_test) <- as.character(features$feature_name)


## Merge data
# First column bind IDs, activities, features of each train and test
train_data <- cbind(subject_train, y_train)
train_data <- merge(train_data,activity_labels,all=TRUE)
train_data <- cbind(train_data, X_train)
test_data <- cbind(subject_test, y_test)
test_data <- merge(test_data,activity_labels,all=TRUE)
test_data <- cbind(test_data, X_test)

# Bind train and test
all_data <- rbind(train_data,test_data)

# Order by subjectID
all_data$subjectID <- as.numeric(all_data$subjectID)
all_data <- all_data[order(all_data$subjectID),]
all_data$subjectID <- as.factor(all_data$subjectID)
# We have activity names, don't need code
all_data$activity_code <- NULL

# Keep only mean and standard dev as instructed
means <- all_data[, grepl("mean",names(all_data), ignore.case=TRUE)]
stds <- all_data[, grepl("std",names(all_data), ignore.case=TRUE)]
tidy_data <- cbind(all_data[,1:2],means,stds)

# Create data set with ave for each var for each activity and subject

tidy_data <- aggregate( tidy_data[,3:88],tidy_data[,1:2], FUN=mean)

write.csv(tidy_data,file='tidyWearablesData.csv',row.names=FALSE)


