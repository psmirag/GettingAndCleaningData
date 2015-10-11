### CodeBook.md


#Feature Selection 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals timeAcceleration-XYZ and timeGyroscope-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBodyAcceleration-XYZ and timeGravityAcceleration-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccelerationJerk-XYZ and timeBodyGyroscopeJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccelerationMagnitude, timeGravityAccelerationMagnitude, timeBodyAccelerationJerkMagnitude, timeBodyGyroscopeMagnitude, timeBodyGyroscopeJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing freqBodyAcceleration-XYZ, freqBodyAccelerationJerk-XYZ, freqBodyGyroscope-XYZ, freqBodyAccelerationJerkMagnitude, freqBodyGyroscopeMagnitude, freqBodyGyroscopeJerkMagnitude.  

## All measures recorded were then averaged (mean function) and aggregated per subject and activity type. The resulting summary is included in the tidydata.txt file

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

timeBodyAcceleration-XYZ
timeGravityAcceleration-XYZ
timeBodyAccelerationJerk-XYZ
timeBodyGyroscope-XYZ
timeBodyGyroscopeJerk-XYZ
timeBodyAccelerationMagnitude
timeGravityAccelerationMagnitude
timeBodyAccelerationJerkMagnitude
timeBodyGyroscopeMagnitude
timeBodyGyroscopeJerkMagnitude
freqBodyAcceleration-XYZ
freqBodyAccelerationJerk-XYZ
freqBodyGyroscope-XYZ
freqBodyAccelerationMagnitude
freqBodyAccelerationJerkMagnitude
freqBodyGyroscopeMagnitude
freqBodyGyroscopeJerkMagnitude

The set of variables that were estimated from these signals are: 

mean(): Mean value of the measurement
std(): Standard deviation of the measurement

## The complete list of variables of each subject/activity pair (row) is as follows:
"timeBodyAcceleration-mean()-X"               "timeBodyAcceleration-mean()-Y"                 
"timeBodyAcceleration-mean()-Z"               "timeBodyAcceleration-stdDev()-X"               
"timeBodyAcceleration-stdDev()-Y"             "timeBodyAcceleration-stdDev()-Z"               
"timeGravityAcceleration-mean()-X"            "timeGravityAcceleration-mean()-Y"              
"timeGravityAcceleration-mean()-Z"            "timeGravityAcceleration-stdDev()-X"            
"timeGravityAcceleration-stdDev()-Y"          "timeGravityAcceleration-stdDev()-Z"            
"timeBodyAccelerationJerk-mean()-X"           "timeBodyAccelerationJerk-mean()-Y"             
"timeBodyAccelerationJerk-mean()-Z"           "timeBodyAccelerationJerk-stdDev()-X"           
"timeBodyAccelerationJerk-stdDev()-Y"         "timeBodyAccelerationJerk-stdDev()-Z"           
"timeBodyGyroscope-mean()-X"                  "timeBodyGyroscope-mean()-Y"                         
"timeBodyGyroscope-mean()-Z"                  "timeBodyGyroscope-stdDev()-X"                       
"timeBodyGyroscope-stdDev()-Y"                "timeBodyGyroscope-stdDev()-Z"                       
"timeBodyGyroscopeJerk-mean()-X"              "timeBodyGyroscopeJerk-mean()-Y"                     
"timeBodyGyroscopeJerk-mean()-Z"              "timeBodyGyroscopeJerk-stdDev()-X"                   
"timeBodyGyroscopeJerk-stdDev()-Y"            "timeBodyGyroscopeJerk-stdDev()-Z"                   
"timeBodyAccelerationMagnitude-mean()"        "timeBodyAccelerationMagnitude-stdDev()"        
"timeGravityAccelerationMagnitude-mean()"     "timeGravityAccelerationMagnitude-stdDev()"     
"timeBodyAccelerationJerkMagnitude-mean()"    "timeBodyAccelerationJerkMagnitude-stdDev()"    
"timeBodyGyroscopeMagnitude-mean()"           "timeBodyGyroscopeMagnitude-stdDev()"                
"timeBodyGyroscopeJerkMagnitude-mean()"       "timeBodyGyroscopeJerkMagnitude-stdDev()"            
"freqBodyAcceleration-mean()-X"               "freqBodyAcceleration-mean()-Y"                 
"freqBodyAcceleration-mean()-Z"               "freqBodyAcceleration-stdDev()-X"               
"freqBodyAcceleration-stdDev()-Y"             "freqBodyAcceleration-stdDev()-Z"               
"freqBodyAccelerationJerk-mean()-X"           "freqBodyAccelerationJerk-mean()-Y"             
"freqBodyAccelerationJerk-mean()-Z"           "freqBodyAccelerationJerk-stdDev()-X"           
"freqBodyAccelerationJerk-stdDev()-Y"         "freqBodyAccelerationJerk-stdDev()-Z"           
"freqBodyGyroscope-mean()-X"                  "freqBodyGyroscope-mean()-Y"                         
"freqBodyGyroscope-mean()-Z"                  "freqBodyGyroscope-stdDev()-X"                       
"freqBodyGyroscope-stdDev()-Y"                "freqBodyGyroscope-stdDev()-Z"                       
"freqBodyAccelerationMagnitude-mean()"        "freqBodyAccelerationMagnitude-stdDev()"        
"freqBodyAccelerationJerkMagnitude-mean()"    "freqBodyAccelerationJerkMagnitude-stdDev()"
"freqBodyGyroscopeMagnitude-mean()"           "freqBodyGyroscopeMagnitude-stdDev()"            
"freqBodyGyroscopeJerkMagnitude-mean()"       "freqBodyGyroscopeJerkMagnitude-stdDev()"        

