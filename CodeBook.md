### CodeBook.md


#Feature Selection 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

## All measures recorded were then averaged (mean function) and aggregated per subject adn activity Type.

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

timeBodyAcceleration-XYZ
timeGravityAcceleration-XYZ
timeBodyAccelerationJerk-XYZ
timeBodyGyro-XYZ
timeBodyGyroJerk-XYZ
timeBodyAccelerationMagnitude
timeGravityAccelerationMagnitude
timeBodyAccelerationJerkMagnitude
timeBodyGyroMagnitude
timeBodyGyroJerkMagnitude
freqBodyAcceleration-XYZ
freqBodyAccelerationJerk-XYZ
freqBodyGyro-XYZ
freqBodyAccelerationMagnitude
freqBodyAccelerationJerkMagnitude
freqBodyGyroMagnitude
freqBodyGyroJerkMagnitude

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

## The complete list of variables of each subject/activity pair (row) is as follows:
"timeBodyAcceleration-mean()-X"                  "timeBodyAcceleration-mean()-Y"                 
"timeBodyAcceleration-mean()-Z"                  "timeBodyAcceleration-stdDev()-X"               
"timeBodyAcceleration-stdDev()-Y"                "timeBodyAcceleration-stdDev()-Z"               
"timeGravityAcceleration-mean()-X"               "timeGravityAcceleration-mean()-Y"              
"timeGravityAcceleration-mean()-Z"               "timeGravityAcceleration-stdDev()-X"            
"timeGravityAcceleration-stdDev()-Y"             "timeGravityAcceleration-stdDev()-Z"            
"timeBodyAccelerationJerk-mean()-X"              "timeBodyAccelerationJerk-mean()-Y"             
"timeBodyAccelerationJerk-mean()-Z"              "timeBodyAccelerationJerk-stdDev()-X"           
"timeBodyAccelerationJerk-stdDev()-Y"            "timeBodyAccelerationJerk-stdDev()-Z"           
"timeBodyGyro-mean()-X"                          "timeBodyGyro-mean()-Y"                         
"timeBodyGyro-mean()-Z"                          "timeBodyGyro-stdDev()-X"                       
"timeBodyGyro-stdDev()-Y"                        "timeBodyGyro-stdDev()-Z"                       
"timeBodyGyroJerk-mean()-X"                      "timeBodyGyroJerk-mean()-Y"                     
"timeBodyGyroJerk-mean()-Z"                      "timeBodyGyroJerk-stdDev()-X"                   
"timeBodyGyroJerk-stdDev()-Y"                    "timeBodyGyroJerk-stdDev()-Z"                   
"timeBodyAccelerationMagnitude-mean()"           "timeBodyAccelerationMagnitude-stdDev()"        
"timeGravityAccelerationMagnitude-mean()"        "timeGravityAccelerationMagnitude-stdDev()"     
"timeBodyAccelerationJerkMagnitude-mean()"       "timeBodyAccelerationJerkMagnitude-stdDev()"    
"timeBodyGyroMagnitude-mean()"                   "timeBodyGyroMagnitude-stdDev()"                
"timeBodyGyroJerkMagnitude-mean()"               "timeBodyGyroJerkMagnitude-stdDev()"            
"freqBodyAcceleration-mean()-X"                  "freqBodyAcceleration-mean()-Y"                 
"freqBodyAcceleration-mean()-Z"                  "freqBodyAcceleration-stdDev()-X"               
"freqBodyAcceleration-stdDev()-Y"                "freqBodyAcceleration-stdDev()-Z"               
"freqBodyAccelerationJerk-mean()-X"              "freqBodyAccelerationJerk-mean()-Y"             
"freqBodyAccelerationJerk-mean()-Z"              "freqBodyAccelerationJerk-stdDev()-X"           
"freqBodyAccelerationJerk-stdDev()-Y"            "freqBodyAccelerationJerk-stdDev()-Z"           
"freqBodyGyro-mean()-X"                          "freqBodyGyro-mean()-Y"                         
"freqBodyGyro-mean()-Z"                          "freqBodyGyro-stdDev()-X"                       
"freqBodyGyro-stdDev()-Y"                        "freqBodyGyro-stdDev()-Z"                       
"freqBodyAccelerationMagnitude-mean()"           "freqBodyAccelerationMagnitude-stdDev()"        
"freqBodyAccelerationJerkMagnitude-mean()"       "freqBodyAccelerationJerkMagnitude-stdDev()"
"freqBodyGyroMagnitude-mean()"                   "freqBodyGyroMagnitude-stdDev()"            
"freqBodyGyroJerkMagnitude-mean()"               "freqBodyGyroJerkMagnitude-stdDev()"        

