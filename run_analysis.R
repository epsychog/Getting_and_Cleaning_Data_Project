## Set the working directory whereto the root directory of the data sets
setwd("C:\\epsychog\\Trainings & Events\\Data Science\\Data Science Specialisation (coursera)\\3. Getting&Cleaning Data\\Peer Assessment\\data")

### 1. Merge the training and the test sets to create one data set. ###

# Read in all the data that we will need to merge

# Read the subject ids: subject_train and subject_test.
subject_train <- read.table(".\\UCI HAR Dataset\\train\\subject_train.txt")
colnames(subject_train) <- "Subject_Id"
subject_test <- read.table(".\\UCI HAR Dataset\\test\\subject_test.txt")
colnames(subject_test) <- "Subject_Id"

# Read the activity ids: y_train and y_test
y_train <- read.table(".\\UCI HAR Dataset\\train\\y_train.txt")
colnames(y_train) <- "Activity_Id"
y_test <- read.table(".\\UCI HAR Dataset\\test\\y_test.txt")
colnames(y_test) <- "Activity_Id"

# Read the features of the test sets: X_train and X_test
X_train <- read.table(".\\UCI HAR Dataset\\train\\X_train.txt")
X_test <- read.table(".\\UCI HAR Dataset\\test\\X_test.txt")

# Add the features as column names to the X_train data set
f <- read.table(".\\UCI HAR Dataset\\features.txt")
feature_names <- f[,2]
colnames(X_train) <- feature_names
colnames(X_test) <- feature_names

# Add the subject_id and activity_id to the X_train and X_test data sets
train_all <- cbind (subject_train, y_train, X_train)
test_all <- cbind (subject_test, y_test, X_test)

# Merge the train and test data sets
all_data <- rbind (train_all,test_all)

### 2. Extract only the mean and standard for each measurement. 

# Extract all mean and std measurements
mean_measures <- grep("mean\\(\\)", names(all_data))
mean_cols_names <- colnames(all_data)[mean_measures]
std_measures <- grep("std\\(\\)", names(all_data))
std_cols_names <- colnames(all_data)[std_measures]

mean_std_data <- cbind(all_data[,c("Subject_Id","Activity_Id",mean_cols_names,std_cols_names)])

### 3. Use descriptive activity names to name the activities in the data set
activities <- read.table(".\\UCI HAR Dataset\\activity_labels.txt", col.names=c("Activity_Id", "Activity_Label"))

### 4. Label appropriately the data set with descriptive activity names. 
labeled_data <- merge(activities,mean_std_data,by.x="Activity_Id",by.y="Activity_Id", all=TRUE)

### 5. Create a second, independent tidy data set with the average of
  # each variable for each activity and each subject. 

# Reorder the columns in labeled_data to be:
# Subject_Id, Activity_Label, Activity_Id, mean and std measurements
pre_aggregation_tidy_data <- cbind(labeled_data[,c("Subject_Id", "Activity_Label","Activity_Id")])
pre_aggregation_tidy_data <- cbind(pre_aggregation_tidy_data,labeled_data[,4:ncol(labeled_data)])

# Reshaping the pre aggregated data to calulate the average (mean)
# of each of the mean and std measures for each activity and each subject.
molten = melt(pre_aggregation_tidy_data, id = c("Subject_Id", "Activity_Label"))
tidy_data_set <- dcast(molten, Subject_Id+Activity_Label~variable, function(x) mean(x))
  
# Write the data set to a file
write.table(tidy_data_set, file="Tidy_Data_Set.txt")

