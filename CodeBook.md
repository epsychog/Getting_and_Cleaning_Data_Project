CodeBook.md
===========

## Data Used in this Analysis
From the dataset provided the following files where used:
  ### For both the Training & Test Sets
  * 'features.txt'
  * 'activity_labels.txt'

  ### For the Training Set
  * 'train/subject_train.txt
  * 'train/X_train.txt'
  * 'train/y_train.txt'

  ### For the Test Set
  * 'test/subject_test.txt
  * 'test/X_test.txt'
  * 'test/y_test.txt'

## Features/Variables Selected
The training and test sets (X_train and X_test) include a 561-feature vector with time and frequency domain variables. For this analysis only the variables that estimated the mean and standard deviation of each variable were selected. More specifically only the variables that included the mean() and std() functions where selected. The features including meanFreq()and the vectors gravityMean, tBodyAccMean, tBodyAccJerkMean, tBodyGyroMean, tBodyGyroJerkMean were not included in this analysis.

## Variables in the Tidy Data Set
The resulting tidy data set has 69 variables as follows:

* (1) Subject_Id - identifies the subject (volunteer) who performed the activity for each sample. It ranges from 1-30. 
                
* (2) Activity_Label - a label indicating the activity performed by the subject (i.e. WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING LAYING)

* (3) Activity_Id - the id of the activity (range 1-6) that corresponds to a activity label (i.e. Activity_Id = 1 for WALKING, 2 for WALKING_UPSTAIRS, 3 for WALKING_DOWNSTAIRS, 4 for SITTING, 5 for STANDING 6 for LAYING)

* (4-69) Variables corresponding to the average mean and standard deviation measurements for each measurement. The aggregation has been done by Subject_Id and by Activity_Id to get the average for each activity for each subject.
The selected variables are 66 in total, 33 corresponding to mean() average values and 33 corresponding to std() average values.

The variable names used are the same as the corresponding featires in the raw data set. However in the tidy data set the values of the variables correspond to the aggregated average for each activity for each subject. Check the 'features_info.txt' in the raw data set for further details about the description of each variable.

The variable names 4-69 follow:
tBodyAcc-mean()-X	   
tBodyAcc-mean()-Y	   
tBodyAcc-mean()-Z	   
tBodyAcc-std()-X	   
tBodyAcc-std()-Y	   
tBodyAcc-std()-Z	   
tGravityAcc-mean()-X	   
tGravityAcc-mean()-Y	   
tGravityAcc-mean()-Z	   
tGravityAcc-std()-X	   
tGravityAcc-std()-Y	   
tGravityAcc-std()-Z	   
tBodyAccJerk-mean()-X	   
tBodyAccJerk-mean()-Y	   
tBodyAccJerk-mean()-Z	   
tBodyAccJerk-std()-X	   
tBodyAccJerk-std()-Y	   
tBodyAccJerk-std()-Z	   
tBodyGyro-mean()-X	   
tBodyGyro-mean()-Y	   
tBodyGyro-mean()-Z	   
tBodyGyro-std()-X	   
tBodyGyro-std()-Y	   
tBodyGyro-std()-Z	   
tBodyGyroJerk-mean()-X	   
tBodyGyroJerk-mean()-Y	   
tBodyGyroJerk-mean()-Z	   
tBodyGyroJerk-std()-X	   
tBodyGyroJerk-std()-Y	   
tBodyGyroJerk-std()-Z	   
tBodyAccMag-mean()	   
tBodyAccMag-std()	   
tGravityAccMag-mean()	   
tGravityAccMag-std()	   
tBodyAccJerkMag-mean()	   
tBodyAccJerkMag-std()	   
tBodyGyroMag-mean()	   
tBodyGyroMag-std()	   
tBodyGyroJerkMag-mean()	   
tBodyGyroJerkMag-std()	   
fBodyAcc-mean()-X	   
fBodyAcc-mean()-Y	   
fBodyAcc-mean()-Z	   
fBodyAcc-std()-X	   
fBodyAcc-std()-Y	   
fBodyAcc-std()-Z	   
fBodyAccJerk-mean()-X	   
fBodyAccJerk-mean()-Y	   
fBodyAccJerk-mean()-Z	   
fBodyAccJerk-std()-X	   
fBodyAccJerk-std()-Y	   
fBodyAccJerk-std()-Z	   
fBodyGyro-mean()-X	   
fBodyGyro-mean()-Y	   
fBodyGyro-mean()-Z	   
fBodyGyro-std()-X	   
fBodyGyro-std()-Y	   
fBodyGyro-std()-Z	   
fBodyAccMag-mean()	   
fBodyAccMag-std()	   
fBodyBodyAccJerkMag-mean()	   
fBodyBodyAccJerkMag-std()	   
fBodyBodyGyroMag-mean()	   
fBodyBodyGyroMag-std()	   
fBodyBodyGyroJerkMag-mean()	   
fBodyBodyGyroJerkMag-std()	 

## Data Not Used in this Analysis
For the purpose of this analysis the triaxal signals for total and body acceleration as well as angular velocity were not used.

Concretely, the following data files were not used:

  ### Triaxial Acceleration - Total Acceleration (X,Y,Z axis)
  * 'train/Inertial Signals/total_acc_x_train.txt'
  * 'train/Inertial Signals/total_acc_y_train.txt
  * 'train/Inertial Signals/total_acc_z_train.txt 

  ### Triaxial Acceleration - Body Acceleration  (X,Y,Z axis)
  * 'train/Inertial Signals/body_acc_x_train.txt
  * 'train/Inertial Signals/body_acc_y_train.txt
  * 'train/Inertial Signals/body_acc_z_train.txt

  ### Triaxial Angular Velocity (X,Y,Z axis)
  * 'train/Inertial Signals/body_gyro_x_train.txt
  * 'train/Inertial Signals/body_gyro_y_train.txt
  * 'train/Inertial Signals/body_gyro_z_train.txt

