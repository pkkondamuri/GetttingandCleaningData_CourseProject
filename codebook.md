##Tidy Dataset codebook
The features selected for the tidy database are a subset of features of original dataset which come from the accelerometer and gyroscope 3-axial raw signals. The features of the tidy dataset correspond to the mean and standard deviation of measurements.
The following is the description of the variables. Note that Xaxis/Yaxis/Zaxis suffix actually represents 3 variables one for each axis.
* activity - A character variable that identifies the activity type. Possible values are "LAYING", "SITTING", "STANDING", "WALKING", "WALKING_DOWNSTAIRS", "WALKING_UPSTAIRS"                                           

* subject - Participant ID with possible values from 1 to 30                                           

* timedomainBodyAccelerometer-mean()-Xaxis/Yaxis/Zaxis - Mean of time domain body accelerometer signal in X or Y or Z axis; normailized to -1 to 1 range          

* timedomainBodyAccelerometer-std()-Xaxis/Yaxis/Zaxis - Standard deviation of time domain body accelerometer signal in X or Y or Z axis; normailized to -1 to 1 range            

* timedomainGravityAccelerometer-mean()-Xaxis/Yaxis/Zaxis - Mean of time domain gravity accelerometer signal in X or Y or Z axis; normailized to -1 to 1 range         

* timedomainGravityAccelerometer-std()-Xaxis/Yaxis/Zaxis - Standard deviation of time domain gravity accelerometer signal in X or Y or Z axis; normailized to -1 to 1 range        

* timedomainBodyAccelerometerJerk-mean()-Xaxis/Yaxis/Zaxis - Mean of time domain body linear acceleration in X or Y or Z axis; normailized to -1 to 1 range         

* timedomainBodyAccelerometerJerk-std()-Xaxis/Yaxis/Zaxis - Standard deviation of time domain body linear acceleration in X or Y or Z axis; normailized to -1 to 1 range 

* timedomainBodyGyroscope-mean()-Xaxis/Yaxis/Zaxis - Mean of time domain body gyroscope signal in X or Y or Z axis; normailized to -1 to 1 range 

* timedomainBodyGyroscope-std()-Xaxis/Yaxis/Zaxis - Standard deviation of time domain body gyroscope signal in X or Y or Z axis; normailized to -1 to 1 range               

* timedomainBodyGyroscopeJerk-mean()-Xaxis/Yaxis/Zaxis - Mean of time domain body angular velocity in X or Y or Z axis; normailized to -1 to 1 range 

* timedomainBodyGyroscopeJerk-std()-Xaxis//Yaxis/Zaxis - Standard deviation of time domain body angular velocity in X or Y or Z axis; normailized to -1 to 1 range   

* timedomainBodyAccelerometerMagnitude-mean() - Mean of magnitude of time domain body accelerometer signal; normalized to -1 to 1 range

* timedomainBodyAccelerometerMagnitude-std() - Standard deviation of magnitude of time domain body accelerometer signal; normalized to -1 to 1 range

* timedomainGravityAccelerometerMagnitude-mean() - Mean of magnitude of time domain gravity  accelerometer signal; normalized to -1 to 1 range 

* timedomainGravityAccelerometerMagnitude-std() - Standard deviation of magnitude of time domain gravity accelerometer signal; normalized to -1 to 1 range  

* timedomainBodyAccelerometerJerkMagnitude-mean() - Mean of magnitude of time domain body linear acceleration; normalized to -1 to 1 range

* timedomainBodyAccelerometerJerkMagnitude-std() - Standard deviation of magnitude of time domain body linear acceleration; normalized to -1 to 1 range

* timedomainBodyGyroscopeMagnitude-mean() - Mean of magnitude of time domain body gyroscope signal; normalized to -1 to 1 range

* timedomainBodyGyroscopeMagnitude-std() - Standard deviation of magnitude of time domain body gyroscope signal; normalized to -1 to 1 range    

* timedomainBodyGyroscopeJerkMagnitude-mean() - Mean of magnitude of time domain body angular velocity; normalized to -1 to 1 range     

* timedomainBodyGyroscopeJerkMagnitude-std() - Standard deviation of magnitude of time domain body angular velocity; normalized to -1 to 1 range

* freqdomainBodyAccelerometer-mean()-Xaxis/Yaxis/Zaxis - Same as time domain variable except this is in frequency domain, obtained using Fast Fourier Transform (FFT); normaized to -1 to 1 

* freqdomainBodyAccelerometer-std()-Xaxis/Yaxis/Zaxis - Same as time domain variable except this is in frequency domain, obtained using Fast Fourier Transform (FFT); normaized to -1 to 1 

* freqdomainBodyAccelerometer-meanFreq()-Xaxis/Yaxis/Zaxis - Mean frequency of body accelerometer signal; normalized to -1 to 1 range

* freqdomainBodyAccelerometerJerk-mean()-Xaxis/Yaxis/Zaxis - Same as time domain variable except this is in frequency domain, obtained using Fast Fourier Transform (FFT); normaized to -1 to 1 

* freqdomainBodyAccelerometerJerk-std()-Xaxis/Yaxis/Zaxis - Same as time domain variable except this is in frequency domain, obtained using Fast Fourier Transform (FFT); normaized to -1 to 1 

* freqdomainBodyAccelerometerJerk-meanFreq()-Xaxis/Yaxis/Zaxis - Mean frequency of body linear acceleration; normalized to -1 to 1 range

* freqdomainBodyGyroscope-mean()-Xaxis/Yaxis/Zaxis - Same as time domain variable except this is in frequency domain, obtained using Fast Fourier Transform (FFT); normaized to -1 to 1 

* freqdomainBodyGyroscope-std()-Xaxis/Yaxis/Zaxis - Same as time domain variable except this is in frequency domain, obtained using Fast Fourier Transform (FFT); normaized to -1 to 1 

* freqdomainBodyGyroscope-meanFreq()-Xaxis/Yaxis/Zaxis - Mean frequency of body gyroscope signal; normalized to -1 to 1 range

* freqdomainBodyAccelerometerMagnitude-mean() - Same as time domain variable except this is in frequency domain, obtained using Fast Fourier Transform (FFT); normaized to -1 to 1 

* freqdomainBodyAccelerometerMagnitude-std() - Same as time domain variable except this is in frequency domain, obtained using Fast Fourier Transform (FFT); normaized to -1 to 1 

* freqdomainBodyAccelerometerMagnitude-meanFreq() - Mean frequency magnitude of body accelerometer signal; normalized to -1 to 1 range

* freqdomainBodyAccelerometerJerkMagnitude-mean() - Same as time domain variable except this is in frequency domain, obtained using Fast Fourier Transform (FFT); normaized to -1 to 1 

* freqdomainBodyAccelerometerJerkMagnitude-std() - Same as time domain variable except this is in frequency domain, obtained using Fast Fourier Transform (FFT); normaized to -1 to 1 

* freqdomainBodyAccelerometerJerkMagnitude-meanFreq() - Mean frequency magnitude of body linear acceleration; normalized to -1 to 1 range

* freqdomainBodyGyroscopeMagnitude-mean() - Same as time domain variable except this is in frequency domain, obtained using Fast Fourier Transform (FFT); normaized to -1 to 1 

* freqdomainBodyGyroscopeMagnitude-std() - Same as time domain variable except this is in frequency domain, obtained using Fast Fourier Transform (FFT); normaized to -1 to 1 

* freqdomainBodyGyroscopeMagnitude-meanFreq() - Mean frequency magnitude of body gyroscope signal; normalized to -1 to 1 range

* freqdomainBodyGyroscopeJerkMagnitude-mean() - - Same as time domain variable except this is in frequency domain, obtained using Fast Fourier Transform (FFT); normaized to -1 to 1 

* freqdomainBodyGyroscopeJerkMagnitude-std() - Same as time domain variable except this is in frequency domain, obtained using Fast Fourier Transform (FFT); normaized to -1 to 1 

* freqdomainBodyGyroscopeJerkMagnitude-meanFreq() - Mean frequency magnitude of body angular velocity; normalized to -1 to 1 range