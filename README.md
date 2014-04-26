README.md
=========

## Introduction
The goal of this project is to prepare and submit a tidy data set that can be used for later analysis.  The project includes the following files:

* README.md - the current file that describes all the scripts used to transform the source raw data to a tidy data set.

* run_analysis.R - an R  script that analyses the data collected from the accelerometer and gyroscope in the Samsung Galaxy S smartphone and produces a tidy data set that can be used for later analysis.

* CodeBook.md - a file containing the descriptions of the variables, the data, and transformations performed to move the data from the raw form to the tidy data form.

## run_analysis.R script
The R script automates the steps needed to move from RAW data to TIDY data. Below is a description of each step.

Start by setting the working directory to be the directory where the raw data set ZIP file was extracted. The directory includes a number of subdirectories with the training and test data sets.

1. Merge the training and test sets to create one data set. This includes the following steps:

* Read in the test and training data to be merged including:
  - the subject ids: subject_train.txt and subject_test.txt
  - the activity ids: y_train.txt and y_test.txt
  - the features of the test sets: X_train.txt and X_test.txt
* Read the names of the features from the features.txt file and add them as column names to the X_train and X_test data sets
* Add the subject_id and activity_id data as columns to the X_train and X_test data sets
* Merge the train and test data sets

2. Extract only the features, from the 561 features in the merged data set, that correspond to measurements on the mean and standard deviation for each measurement.
See the CodeBook.md for more information on the features that were selected.

3. Use the descriptive activity names found in the activity_labels.txt (i.e. WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING LAYING) to name the activities in the merged data set.

4. Use the descriptive activity names above to label the merged data set appropriately

5. Create a second, independent tidy data set with the average of each selected feature (variable) for each activity and each subject. This entails the aggregation of the data by subject and by activity.

6. Write the tidy data set produced to a file
