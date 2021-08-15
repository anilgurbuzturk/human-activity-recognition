# Peer-graded Assignment: Getting and Cleaning Data Course Project

## Human Activity Recognition Using Smartphones Data Set

### Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

### Attribute Information:

For each record in the dataset it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope.
- A 561-feature vector with time and frequency domain variables.
- Its activity label.
- An identifier of the subject who carried out the experiment. 

### Variable Information (final_data.txt):

activity: there are six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).

subject: there are 30 volunteers within an age bracket of 19-48 years.

### Variable List (final_data.txt):

 [1] "activity"                                         
 [2] "subject"                                          
 [3] "TimeBodyAccelerometerMean()-X"                    
 [4] "TimeBodyAccelerometerMean()-Y"                    
 [5] "TimeBodyAccelerometerMean()-Z"                    
 [6] "TimeGravityAccelerometerMean()-X"                 
 [7] "TimeGravityAccelerometerMean()-Y"                 
 [8] "TimeGravityAccelerometerMean()-Z"                 
 [9] "TimeBodyAccelerometerJerkMean()-X"                
[10] "TimeBodyAccelerometerJerkMean()-Y"                
[11] "TimeBodyAccelerometerJerkMean()-Z"                
[12] "TimeBodyGyroscopeMean()-X"                        
[13] "TimeBodyGyroscopeMean()-Y"                        
[14] "TimeBodyGyroscopeMean()-Z"                        
[15] "TimeBodyGyroscopeJerkMean()-X"                    
[16] "TimeBodyGyroscopeJerkMean()-Y"                    
[17] "TimeBodyGyroscopeJerkMean()-Z"                    
[18] "TimeBodyAccelerometerMagnitudeMean()"             
[19] "TimeGravityAccelerometerMagnitudeMean()"          
[20] "TimeBodyAccelerometerJerkMagnitudeMean()"         
[21] "TimeBodyGyroscopeMagnitudeMean()"                 
[22] "TimeBodyGyroscopeJerkMagnitudeMean()"             
[23] "FrequencyBodyAccelerometerMean()-X"               
[24] "FrequencyBodyAccelerometerMean()-Y"               
[25] "FrequencyBodyAccelerometerMean()-Z"               
[26] "FrequencyBodyAccelerometerMeanFreq()-X"           
[27] "FrequencyBodyAccelerometerMeanFreq()-Y"           
[28] "FrequencyBodyAccelerometerMeanFreq()-Z"           
[29] "FrequencyBodyAccelerometerJerkMean()-X"           
[30] "FrequencyBodyAccelerometerJerkMean()-Y"           
[31] "FrequencyBodyAccelerometerJerkMean()-Z"           
[32] "FrequencyBodyAccelerometerJerkMeanFreq()-X"       
[33] "FrequencyBodyAccelerometerJerkMeanFreq()-Y"       
[34] "FrequencyBodyAccelerometerJerkMeanFreq()-Z"       
[35] "FrequencyBodyGyroscopeMean()-X"                   
[36] "FrequencyBodyGyroscopeMean()-Y"                   
[37] "FrequencyBodyGyroscopeMean()-Z"                   
[38] "FrequencyBodyGyroscopeMeanFreq()-X"               
[39] "FrequencyBodyGyroscopeMeanFreq()-Y"               
[40] "FrequencyBodyGyroscopeMeanFreq()-Z"               
[41] "FrequencyBodyAccelerometerMagnitudeMean()"        
[42] "FrequencyBodyAccelerometerMagnitudeMeanFreq()"    
[43] "FrequencyBodyAccelerometerJerkMagnitudeMean()"    
[44] "FrequencyBodyAccelerometerJerkMagnitudeMeanFreq()"
[45] "FrequencyBodyGyroscopeMagnitudeMean()"            
[46] "FrequencyBodyGyroscopeMagnitudeMeanFreq()"        
[47] "FrequencyBodyGyroscopeJerkMagnitudeMean()"        
[48] "FrequencyBodyGyroscopeJerkMagnitudeMeanFreq()"    
[49] "Angle(TimeBodyAccelerometerMean,Gravity)"         
[50] "Angle(TimeBodyAccelerometerJerkMean),GravityMean)"
[51] "Angle(TimeBodyGyroscopeMean,GravityMean)"         
[52] "Angle(TimeBodyGyroscopeJerkMean,GravityMean)"     
[53] "Angle(X,GravityMean)"                             
[54] "Angle(Y,GravityMean)"                             
[55] "Angle(Z,GravityMean)"                             
[56] "TimeBodyAccelerometerSTD()-X"                     
[57] "TimeBodyAccelerometerSTD()-Y"                     
[58] "TimeBodyAccelerometerSTD()-Z"                     
[59] "TimeGravityAccelerometerSTD()-X"                  
[60] "TimeGravityAccelerometerSTD()-Y"                  
[61] "TimeGravityAccelerometerSTD()-Z"                  
[62] "TimeBodyAccelerometerJerkSTD()-X"                 
[63] "TimeBodyAccelerometerJerkSTD()-Y"                 
[64] "TimeBodyAccelerometerJerkSTD()-Z"                 
[65] "TimeBodyGyroscopeSTD()-X"                         
[66] "TimeBodyGyroscopeSTD()-Y"                         
[67] "TimeBodyGyroscopeSTD()-Z"                         
[68] "TimeBodyGyroscopeJerkSTD()-X"                     
[69] "TimeBodyGyroscopeJerkSTD()-Y"                     
[70] "TimeBodyGyroscopeJerkSTD()-Z"                     
[71] "TimeBodyAccelerometerMagnitudeSTD()"              
[72] "TimeGravityAccelerometerMagnitudeSTD()"           
[73] "TimeBodyAccelerometerJerkMagnitudeSTD()"          
[74] "TimeBodyGyroscopeMagnitudeSTD()"                  
[75] "TimeBodyGyroscopeJerkMagnitudeSTD()"              
[76] "FrequencyBodyAccelerometerSTD()-X"                
[77] "FrequencyBodyAccelerometerSTD()-Y"                
[78] "FrequencyBodyAccelerometerSTD()-Z"                
[79] "FrequencyBodyAccelerometerJerkSTD()-X"            
[80] "FrequencyBodyAccelerometerJerkSTD()-Y"            
[81] "FrequencyBodyAccelerometerJerkSTD()-Z"            
[82] "FrequencyBodyGyroscopeSTD()-X"                    
[83] "FrequencyBodyGyroscopeSTD()-Y"                    
[84] "FrequencyBodyGyroscopeSTD()-Z"                    
[85] "FrequencyBodyAccelerometerMagnitudeSTD()"         
[86] "FrequencyBodyAccelerometerJerkMagnitudeSTD()"     
[87] "FrequencyBodyGyroscopeMagnitudeSTD()"             
[88] "FrequencyBodyGyroscopeJerkMagnitudeSTD()" 

