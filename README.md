cleaningdata_wearables
======================

Code to clean data from the human activity recognition using smartphones data set for the class project in Getting and Cleaning Data  

### Files included
* tidyWearablesData.csv - a csv file containing tidy data with average mean and standard deviations measurements for each subject for each activity
* run_analysis.R - R code used to create csv file, assumes that 'UCI HAR Dataset' directory is in your working directory 
* CodeBook.md - describes variables in tidyWearablesData.csv

### About run_analysis.R
This code does the following:
* Reads in relevant files from training and test data sets.
* Reads in files with activity and feature labels to use as column names.
* Formats variable names and classes.
* Merges all training data together with proper column names.
* Merges all test data together with proper column names.
* Merges training and test data together.
* Orders data by subjectID.
* Subsets the measurement variables to include only mean and standard deviationmeasurements as instructed in assignment. (This includes any variable with 'mean' or 'std' in the name, including meanFreq() variables and including angle variables.  I included everything to err on the side of too much data, since it was unclear in the instructions.)
* Creates a smaller tidy data set with the average value for each mean/std measurement for each activity and each subject.
* Writes tidy data set to a file called 'tidyWearablesData.csv'.

