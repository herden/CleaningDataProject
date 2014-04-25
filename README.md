Cleaning Data Project
========================================================

Download file from the source ( https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip )into a folder

 RStudio: set working directory C:\Users\Lana\Desktop\CleanDataProj\UCI HAR Dataset\CleningDataProject
 
 Run script "run_ana1.R"

The dataset includes the following files:
=========================================

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.


Data working Steps


        Read the all values
        Take a subset of the columns representing only the mean and standard deviation values. 
       Combine activity IDs and subject IDs from y_dataset.txt and subject_dataset.txt 
        Assign column to the data with file features.txt 
        Assign column with names as mentioned in activity_labels.txt.
    Combine dataset by activity ID,subject ID,ID variables.
        Save the resultin re-casted dataset as tidy.txt
