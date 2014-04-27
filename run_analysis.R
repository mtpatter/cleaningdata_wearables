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
