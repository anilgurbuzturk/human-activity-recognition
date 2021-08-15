# Peer-graded Assignment: Getting and Cleaning Data Course Project
## Human Activity Recognition Using Smartphones Data Set

### Abstract 

Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

### Data Set Information

Subjects performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 
Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz were captured. 
The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The data set was downloaded from https://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones link.

R script called run_analysis.R contains all the code to perform the analyses.

### About the R Script

The R script called run_analysis.R includes the following:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

### About CodeBook.md

This file shows the variable information and variable list of final_data.txt

### About final_data.txt

This file contains the final version of the data set. 
