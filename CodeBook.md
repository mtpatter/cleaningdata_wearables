### About the data in 'tidyWearablesData.csv'
This file can be read in as a data frame n R with 180 observations
(30 subjects x 6 activities) of 88 variables
of average measurements taken by smartphones during the activities performed
by each person.

Included as columns are the following:
* subjectID - this is the number identifier from 1-30 provided in test/subject_test.txt and train/subject_train.txt

* activity_name - this can be one of 6 activities provided in activity_labels.txt - LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS

* 86 more variables derived from all measurements described in features_info.txt that contained either the characters 'mean' or 'std' without case sensitivity.
Each value in the tidy data set is the average value for each of these variables for each subject for each group of activities.  That is, for example, the value in 
'tBodyAcc-mean()-X' where 'subjectID'=1 and 'activity_name'=LAYING gives the
average value for all measurements of tBodyAcc-mean()-X for subject number 1
taken while the subject was performing the LAYING activity.

Please see the README data from the following link for more information
regarding the variables and original data. 
[Original data](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)


