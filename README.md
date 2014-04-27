cleaning UCI HAR Dataset
========================

The following scripts are part of cleaning UCI HAR Dataset
   * run_analysis.R 
   * mergeAverage.R
   * combineSAF.R
   * interestedFeatures.R
   * activity.R
   * subject.R
   * features.R
   
Usage 
=====

If inside the directory cleansesamsungdata
```
     source("run_analysis.R")
     d <- "location to the UCI HAR Dataset directory"
     runAll(d) 
```
     
If calling from your working directory where UCI HAR Dataset
present and assuming you downloaded these scripts folder
to the same working directory
```
     source("run_analysis.R")
     runAll()
```
     
After running runAll you will have to files created
  1. cleanmergedata.txt
  2. tidydata.txt
  
features.R: has a function features(directory) which extracts the features we are interested the mean
            standard deviation

subject.R: has a function subject(directory,data) which extracts the subjects from subject_*.txt file
           where * = test/train data
           
activity.R: has functions activity_label_lookup(directory) and activity(dir,data,lookup). the activity() 
            function uses the activity_label_lookup() to convert the values to meaningful activity
            names.
  
interestedFeatures.R: has function interstedFeatures(dir,data). this function loads all the activity
                    extracts the interested features using the features function
                    and add's meaningful column names.
                    
combineSAF.R: has function combineSAF(directory,data). this function call the subject, activity and
              interstedFunctions combines them into a single data frame and renames the column added 
              from activity fucntion to "Activity" 
              
mergeAverage.R: has functions mergeTrainTestData(dir) and avgPerActivityandSubject(data). the 
                mergeTrainTestData calls the combineSAF function on train and test folders and merges
                them. The avgPerActivityandSubject is used to calculate the average of each variable 
                for each activity and each subject.
                
run_analysis.R: has function runAll(dir). which call the mergeTrainTestData and creates a file named
                cleanedmergedata.txt and then calls avgPerActivityandSubject to create a file named
                tidydata.txt which contains the average of each variable for each activity and each 
                subject.
   