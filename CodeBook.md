# Codebook

## After calculation, there are three data files in total, which are *“my_dt.csv”*, *“mean_std.csv”* and *“new_dt.csv”*

**“my_dt.csv”** merges all the data from the training set to the test set except for the internal sensor data. This data includes a total of 564 variables and 10,299 observations.
Variables:
### “subject”
Subject codes, including a total of 30 subjects.

### “label_y”
The calibrated value, Y, has been converted to an action.   
1. “WALKING”  
2. “WALKING_UPSTAIRS”  
3. “WALKING_DOWNSTAIRS”  
4. “SITTING”  
5. “STANDING”  
6. “LAYING” 


### Sensor Data
All data from the 3rd to the 563rd are sensor data.   
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).    
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).    
These signals were used to estimate variables of the feature vector for each pattern:
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.   
tBodyAcc-XYZ  
tGravityAcc-XYZ  
tBodyAccJerk-XYZ  
tBodyGyro-XYZ  
tBodyGyroJerk-XYZ  
tBodyAccMag  
tGravityAccMag  
tBodyAccJerkMag  
tBodyGyroMag  
tBodyGyroJerkMag  
fBodyAcc-XYZ  
fBodyAccJerk-XYZ  
fBodyGyro-XYZ  
fBodyAccMag  
fBodyAccJerkMag  
fBodyGyroMag  
fBodyGyroJerkMag  
The set of variables that were estimated from these signals are:   
mean(): Mean value  
std(): Standard deviation  
mad(): Median absolute deviation   
max(): Largest value in array  
min(): Smallest value in array  
sma(): Signal magnitude area  
energy(): Energy measure. Sum of the squares divided by the number of values.   
iqr(): Interquartile range   
entropy(): Signal entropy  
arCoeff(): Autorregresion coefficients with Burg order equal to 4  
correlation(): correlation coefficient between two signals  
maxInds(): index of the frequency component with largest magnitude  
meanFreq(): Weighted average of the frequency components to obtain a mean frequency  
skewness(): skewness of the frequency domain signal   
kurtosis(): kurtosis of the frequency domain signal   
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.  
angle(): Angle between to vectors.  
Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:  
gravityMean  
tBodyAccMean  
tBodyAccJerkMean  
tBodyGyroMean  
tBodyGyroJerkMean  

### “group”
Retains the labels of the training and test sets   
1.  “train”  
2.  “test”

---

***“mean_std.csv”*** is similar to “my_dt.csv”, but the sensor data contains only the mean value and the std value. It includes a total of 82 variables and 10,299 observations.

### “subject”
Subject codes, including a total of 30 subjects.

### “label_y”
The calibrated value, Y, has been converted to an action.
1 “WALKING”
2 “WALKING_UPSTAIRS”
3 “WALKING_DOWNSTAIRS”
4 “SITTING”
5 “STANDING”
6 “LAYING”

### Sensor Data
Only the mean value and the std value.

### “group”
Retains the labels of the training and test sets
 “train”
 “test”

---
***“new_dt.csv”*** is an independent tidy data set with the average of each variable for each activity and each subject. It includes a total of 563 variables and 180 observations.
“subject”
Subject codes, including a total of 30 subjects.

### “label_y”
The calibrated value, Y, has been converted to an action.
1 “WALKING”
2 “WALKING_UPSTAIRS”
3 “WALKING_DOWNSTAIRS”
4 “SITTING”
5 “STANDING”
6 “LAYING”

### Sensor Data
All data from the 3rd to the 563rd are sensor data.
Data are mean-valued
