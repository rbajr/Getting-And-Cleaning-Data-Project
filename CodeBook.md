Data Dictionary for tidyGroupedData.txt
This data set is built from the UCI Machine Learning Repository's Human Activity Recognition Using Smartphones Data Set, http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#.  

This dataset was created by:
- Combining the test and training data, which consists of 561 measurement variables.
- Adding the activity and variable names to the dataset from the activity_labels.txt and features_info.txt files, respectively.
- Extracting only variables for mean or std measurements (thus reducing the number of variables from 561 to 68, including the ActivityID and SubjectID variables).
- Grouping by ActivityID, SubjectID and calculating the mean for each group.  

Variables:
Activity - the measured activity:
	             LAYING
	            SITTING
	           STANDING
	            WALKING
	 WALKING_DOWNSTAIRS
	   WALKING_UPSTAIRS                 
SubjectID - the id number assigned to the person in the study.  Values range from 1 - 30. 

The remaining variables are measures, values ranging from -1 - 1.                  
tBodyAcc-mean()-X	num        
tBodyAcc-mean()-Y	num          
tBodyAcc-mean()-Z	num           
tBodyAcc-std()-X	num            
tBodyAcc-std()-Y	num            
tBodyAcc-std()-Z	num           
tGravityAcc-mean()-X	num        
tGravityAcc-mean()-Y	num        
tGravityAcc-mean()-Z	num        
tGravityAcc-std()-X	num        
tGravityAcc-std()-Y	num         
tGravityAcc-std()-Z	num         
tBodyAccJerk-mean()-X	num       
tBodyAccJerk-mean()-Y	num      
tBodyAccJerk-mean()-Z	num       
tBodyAccJerk-std()-X	num        
tBodyAccJerk-std()-Y	num        
tBodyAccJerk-std()-Z	num       
tBodyGyro-mean()-X	num          
tBodyGyro-mean()-Y	num          
tBodyGyro-mean()-Z	num          
tBodyGyro-std()-X	num          
tBodyGyro-std()-Y	num           
tBodyGyro-std()-Z	num           
tBodyGyroJerk-mean()-X	num      
tBodyGyroJerk-mean()-Y	num     
tBodyGyroJerk-mean()-Z	num      
tBodyGyroJerk-std()-X	num       
tBodyGyroJerk-std()-Y	num       
tBodyGyroJerk-std()-Z	num      
tBodyAccMag-mean()	num          
tBodyAccMag-std()	num           
tGravityAccMag-mean()	num       
tGravityAccMag-std()	num       
tBodyAccJerkMag-mean()	num      
tBodyAccJerkMag-std()	num       
tBodyGyroMag-mean()	num         
tBodyGyroMag-std()	num         
tBodyGyroJerkMag-mean()	num     
tBodyGyroJerkMag-std()	num      
fBodyAcc-mean()-X 	num          
fBodyAcc-mean()-Y	num          
fBodyAcc-mean()-Z	num           
fBodyAcc-std()-X	num            
fBodyAcc-std()-Y 	num           
fBodyAcc-std()-Z 	num          
fBodyAccJerk-mean()-X	num       
fBodyAccJerk-mean()-Y 	num      
fBodyAccJerk-mean()-Z 	num      
fBodyAccJerk-std()-X 	num      
fBodyAccJerk-std()-Y 	num       
fBodyAccJerk-std()-Z 	num       
fBodyGyro-mean()-X 	num         
fBodyGyro-mean()-Y 	num        
fBodyGyro-mean()-Z 	num         
fBodyGyro-std()-X  	num         
fBodyGyro-std()-Y  	num         
fBodyGyro-std()-Z  	num        
fBodyAccMag-mean() 	num         
fBodyAccMag-std()  	num         
fBodyBodyAccJerkMag-mean() 	num 
fBodyBodyAccJerkMag-std() 	num 
fBodyBodyGyroMag-mean()  	num   
fBodyBodyGyroMag-std() 		num     
fBodyBodyGyroJerkMag-mean()	num 
fBodyBodyGyroJerkMag-std() 	num

