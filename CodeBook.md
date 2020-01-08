The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals time-acc-XYZ and time-gyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (time-body-ac-XYZ and time-gravity-acc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fourier-body-acc-XYZ, fourier-body-acc-jerk-XYZ, fourier-body-gyro-XYZ, fourier-body-acc-jerk-mag, fourier-body-gyro-mag, fourier-body-gyro-jerk-mag

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

time-body-acc-XYZ
time-gravity-acc-XYZ
time-body-jerk-XYZ
time-body-gyro-XYZ
time-body-gyro-jerk-XYZ
time-body-acc-mag
time-gravity-acc-mag
time-body-acc-jerk-mag
time-body-gyro-mag
time-body-gyro-jerk-mag
fourier-body-acc-XYZ
fourier-body-acc-jerk-XYZ
fourier-body-gyro-XYX
fourier-body-acc-mag
fourier-body-acc-jerk-mag
fourier-body-gyro-mag
fourier-body-gyro-jerk-mag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravity-mean
time-body-acc-mean
time-body-acc-jerk-mean
time-body-gyro-mean
time-body-gyro-jerk-mean
