# Code Book

Compiled By: Jay Anderson
Source: UCI Machine Learning Repository
Project: Human Activity Recognition Using Smartphones Data Set 
URL: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#

Purpose: Used for class project in Getting and Cleaning Data on Coursera.

# Data Description (from Source)

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:

- 'README.txt'
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

# Variables in Output File 

The SubjectID is the identifier for each subject in the study. The Activity is what the subject was doing at the time of measurement. The remaining variables are averages of the raw data from the sensors grouped by SubjectID then Activity. The variable names have been altered from the original for readability.

 [1] "SubjectID"                                     
 [2] "Activity"                                      
 [3] "Time-Body-Accelerometer-mean()-X"              
 [4] "Time-Body-Accelerometer-mean()-Y"              
 [5] "Time-Body-Accelerometer-mean()-Z"              
 [6] "Time-Body-Accelerometer-std()-X"               
 [7] "Time-Body-Accelerometer-std()-Y"               
 [8] "Time-Body-Accelerometer-std()-Z"               
 [9] "Time-Gravity-Accelerometer-mean()-X"           
[10] "Time-Gravity-Accelerometer-mean()-Y"           
[11] "Time-Gravity-Accelerometer-mean()-Z"           
[12] "Time-Gravity-Accelerometer-std()-X"            
[13] "Time-Gravity-Accelerometer-std()-Y"            
[14] "Time-Gravity-Accelerometer-std()-Z"            
[15] "Time-Body-AccelerometerJerk-mean()-X"          
[16] "Time-Body-AccelerometerJerk-mean()-Y"          
[17] "Time-Body-AccelerometerJerk-mean()-Z"          
[18] "Time-Body-AccelerometerJerk-std()-X"           
[19] "Time-Body-AccelerometerJerk-std()-Y"           
[20] "Time-Body-AccelerometerJerk-std()-Z"           
[21] "Time-Body-Gyroscope-mean()-X"                  
[22] "Time-Body-Gyroscope-mean()-Y"                  
[23] "Time-Body-Gyroscope-mean()-Z"                  
[24] "Time-Body-Gyroscope-std()-X"                   
[25] "Time-Body-Gyroscope-std()-Y"                   
[26] "Time-Body-Gyroscope-std()-Z"                   
[27] "Time-Body-GyroscopeJerk-mean()-X"              
[28] "Time-Body-GyroscopeJerk-mean()-Y"              
[29] "Time-Body-GyroscopeJerk-mean()-Z"              
[30] "Time-Body-GyroscopeJerk-std()-X"               
[31] "Time-Body-GyroscopeJerk-std()-Y"               
[32] "Time-Body-GyroscopeJerk-std()-Z"               
[33] "Time-Body-AccelerometerMag-mean()"             
[34] "Time-Body-AccelerometerMag-std()"              
[35] "Time-Gravity-AccelerometerMag-mean()"          
[36] "Time-Gravity-AccelerometerMag-std()"           
[37] "Time-Body-AccelerometerJerkMag-mean()"         
[38] "Time-Body-AccelerometerJerkMag-std()"          
[39] "Time-Body-GyroscopeMag-mean()"                 
[40] "Time-Body-GyroscopeMag-std()"                  
[41] "Time-Body-GyroscopeJerkMag-mean()"             
[42] "Time-Body-GyroscopeJerkMag-std()"              
[43] "Frequency-Body-Accelerometer-mean()-X"         
[44] "Frequency-Body-Accelerometer-mean()-Y"         
[45] "Frequency-Body-Accelerometer-mean()-Z"         
[46] "Frequency-Body-Accelerometer-std()-X"          
[47] "Frequency-Body-Accelerometer-std()-Y"          
[48] "Frequency-Body-Accelerometer-std()-Z"          
[49] "Frequency-Body-AccelerometerJerk-mean()-X"     
[50] "Frequency-Body-AccelerometerJerk-mean()-Y"     
[51] "Frequency-Body-AccelerometerJerk-mean()-Z"     
[52] "Frequency-Body-AccelerometerJerk-std()-X"      
[53] "Frequency-Body-AccelerometerJerk-std()-Y"      
[54] "Frequency-Body-AccelerometerJerk-std()-Z"      
[55] "Frequency-Body-Gyroscope-mean()-X"             
[56] "Frequency-Body-Gyroscope-mean()-Y"             
[57] "Frequency-Body-Gyroscope-mean()-Z"             
[58] "Frequency-Body-Gyroscope-std()-X"              
[59] "Frequency-Body-Gyroscope-std()-Y"              
[60] "Frequency-Body-Gyroscope-std()-Z"              
[61] "Frequency-Body-AccelerometerMag-mean()"        
[62] "Frequency-Body-AccelerometerMag-std()"         
[63] "Frequency-BodyBody-AccelerometerJerkMag-mean()"
[64] "Frequency-BodyBody-AccelerometerJerkMag-std()" 
[65] "Frequency-BodyBody-GyroscopeMag-mean()"        
[66] "Frequency-BodyBody-GyroscopeMag-std()"         
[67] "Frequency-BodyBody-GyroscopeJerkMag-mean()"    
[68] "Frequency-BodyBody-GyroscopeJerkMag-std()"
