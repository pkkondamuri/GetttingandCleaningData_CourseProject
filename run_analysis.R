#Load the libraries
library(dplyr)

#Verify if data files exist, if not download the zip file and unzip it
if(!file.exists("getdata-projectfiles-UCI HAR Dataset.zip")){
        download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
                      destfile="getdata-projectfiles-UCI HAR Dataset.zip")
        unzip("getdata-projectfiles-UCI HAR Dataset.zip")
}

#=======
#STEP 1: Merge the training and the test sets to create one data set
#=======
#Load X train and test data, combine them into a single set
Xtrain<-read.table("UCI HAR Dataset/train/X_train.txt")
Xtest<-read.table("UCI HAR Dataset/test/X_test.txt")
X<-rbind(Xtrain,Xtest)
rm(Xtrain,Xtest) #Clean up

#Load y train and test data, combine them into a single set
ytrain<-read.table("UCI HAR Dataset/train/y_train.txt")
ytest<-read.table("UCI HAR Dataset/test/y_test.txt")
y<-rbind(ytrain,ytest)
rm(ytrain,ytest) #Clean up

#Load features info
features<-read.table("UCI HAR Dataset/features.txt",stringsAsFactors=FALSE)

#Load subject train and test info, combine them into single set
subject_train<-read.table("UCI HAR Dataset/train/subject_train.txt")
subject_test<-read.table("UCI HAR Dataset/test/subject_test.txt")
subject<-rbind(subject_train,subject_test)
rm(subject_train,subject_test) #Clean up

#Load activity labels info
activity_labels<-read.table("UCI HAR Dataset/activity_labels.txt",stringsAsFactors=FALSE)

#=======
#STEP 2: Extract only the measurements on the mean and standard deviation for each measurement
#=======
#Subset the features to those with only mean or std
mean_std_features<-features[grep("mean()|std()",features$V2),]
#Subset X to only features of interest
Xsubset<-X[,t(mean_std_features$V1)]
rm(X,features) #Clean up
#=======
#STEP 3: Use descriptive activity names to name the activities in the data set
#=======

#Replace activity number with activity description from activity_labels
y[y==1]<-activity_labels[1,2]
y[y==2]<-activity_labels[2,2]
y[y==3]<-activity_labels[3,2]
y[y==4]<-activity_labels[4,2]
y[y==5]<-activity_labels[5,2]
y[y==6]<-activity_labels[6,2]

#=======
#STEP 4: Appropriately label the data set with descriptive variable names
#=======
#First, set the variable names using the names from features subset created in Step 2
names(Xsubset)<-mean_std_features$V2

#Next, modify the names to make them more descriptive
names(Xsubset)<-gsub("^t","timedomain",names(Xsubset))
names(Xsubset)<-gsub("^f","freqdomain",names(Xsubset))
names(Xsubset)<-gsub("Acc","Accelerometer",names(Xsubset))
names(Xsubset)<-gsub("Gyro","Gyroscope",names(Xsubset))
names(Xsubset)<-gsub("BodyBody","Body",names(Xsubset))
names(Xsubset)<-gsub("Mag","Magnitude",names(Xsubset))
names(Xsubset)<-gsub("-X","-Xaxis",names(Xsubset))
names(Xsubset)<-gsub("-Y","-Yaxis",names(Xsubset))
names(Xsubset)<-gsub("-Z","-Zaxis",names(Xsubset))

#Add activity and subject columns to Xsubset; name it dataset
dataset<-cbind(Xsubset,activity=y$V1,subject=subject$V1)
dataset$activity<-factor(dataset$activity)
dataset$subject<-factor(dataset$subject)
rm(Xsubset,y,activity_labels,subject,mean_std_features) #Clean up

#=======
#STEP 5: Create a second, independent tidy data set with the average of each variable 
#        for each activity and each subject
#=======
#Group the dataset by activity and subject, then summarize with average of each variable
tidy_dataset<-dataset %>% group_by(activity,subject) %>%summarise_each(funs(mean))


#Create a text file with tidy dataset
write.table(tidy_dataset,"tidy_dataset.txt",row.names=FALSE)

#Verify by loading the tidy dataset from the file created above
check_tidy<-read.table("tidy_dataset.txt",header=TRUE)

