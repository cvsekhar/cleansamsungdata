Transformations for arriving at the final tidy data
===================================================

1. Add a header Subject to the data from subject_*.txt

2. Transform the features.txt to get only the rows which
   have mean() and std() using **grep** function using the pattern 
   "*-mean\\(\\)*|*-std\\(\\)*", the resulting data frame consists
   of two columns the index and the column name of the features we need
   to extract from the final data set.

3. Transform all the activity data inside the fil
   y_*.txt to meaningful activity names using the activity_labels.txt

3. Using the features from 2index extract the interested columns from
   X_*.txt and the header of the column names from features.

4. Combine the Subject,Activity and columns extracted from X_*.txt to
   get the combined data set.
   
5. Repeat 1-4 on the train and test data and merge both of them to get
   the final data set.
   
6. Then melt data from 5 on Subject and Activity

7. Cast the melted data from 6 on Subject+Activity with mean on variables

8. Added meaningful column names on the casted data


Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial 
raw signals tAcc-XYZ and tGyro-XYZ from the original data set but averaged for each subject
and activity.

Acticvities include the following WALKING,SITTING,STANDING,LAYING
WALKING_UPSTAIRS,WALKING_DOWNSTAIRS

*Subject  -- the id of subject under test
*Activity -- one of the  6 activites per subject

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* Average-tBodyAcc-XYZ-*-each subject and activity
* Average-tGravityAcc-XYZ-*-each subject and activity
* Average-tBodyAccJerk-XYZ-*-each subject and activity
* Average-tBodyGyro-XYZ-*-each subject and activity
* Average-tBodyGyroJerk-XYZ-*-each subject and activity
* Average-fBodyAcc-XYZ-*-each subject and activity
* Average-fBodyAccJerk-XYZ-*-each subject and activity
* Average-fBodyGyro-XYZ-*-each subject and activity
* Average-tBodyAccMag-each subject and activity
* Average-tGravityAccMag-each subject and activity
* Average-tBodyAccJerkMag-each subject and activity
* Average-tBodyGyroMag-each subject and activity
* Average-tBodyGyroJerkMag-each subject and activity
* Average-fBodyAccMag-each subject and activity
* Average-fBodyAccJerkMag-each subject and activity
* Average-fBodyGyroMag-each subject and activity
* Average-fBodyGyroJerkMag-each subject and activity

The set of variables that were estimated from these signals are: 
* mean(): Average Mean value
* std(): Average Standard deviation


