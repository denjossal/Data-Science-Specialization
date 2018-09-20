#Libs
library(plyr)
library(dplyr)
#Point 1: Merges the training and the test sets to create one data set.
#Unzip file on folder
#Load file from unziped files
#Load url files
#Root
fp <- "./features.txt"
#Test
tps <- "./test/subject_test.txt"
tpx <- "./test/X_test.txt"
tpy <- "./test/y_test.txt"

#Train
trps <- "./train/subject_train.txt"
trpx <- "./train/X_train.txt"
trpy <- "./train/y_train.txt"

#Read Test files
#features headers
fpFile <- read.table(fp, header = FALSE)

#subject file
tpsFile <- readLines(tps)

#test file
tpxFile <- read.table(tpx, header = FALSE)

#label file
tpyFile <- readLines(tpy)
#Rename label file
#Point 4: Appropriately labels the data set with descriptive variable names.
cont <- 1
for(i in tpyFile){
  if(i=="1"){
    tpyFile[cont]="WALKING"
  }
  else if(i=="2"){
    tpyFile[cont]="WALKING_UPSTAIRS"
  }
  else if(i=="3"){
    tpyFile[cont]="WALKING_DOWNSTAIRS"
  }
  else if(i=="4"){
    tpyFile[cont]="SITTING"
  }
  else if(i=="5"){
    tpyFile[cont]="STANDING"
  }
  else if(i=="6"){
    tpyFile[cont]="LAYING"
  }
  else{
    tpyFile[cont]="UNDEFINED LABEL"
  }
  cont <- cont+1     
}

#Add features headers fpFile has V1 and V2 columns
#Point 3: Uses descriptive activity names to name the activities in the data set
tpxFileNew <- setNames(tpxFile, fpFile$V2)

#Add new column with label data
tpxFileNew2 <- cbind(tpyFile, tpxFileNew)

#Rename tpyFile with label
names(tpxFileNew2)[1] <- "label"

#Add new column with subject
tpxFileNew2 <- cbind(tpsFile, tpxFileNew2)

#Rename 'tpsFile' with 'subject'
names(tpxFileNew2)[1] <- "subject"


#Read Train files
#subject file
trpsFile <- readLines(trps)

#train file
trpxFile <- read.table(trpx, header = FALSE)

#label file
trpyFile <- readLines(trpy)
#Point 4: Appropriately labels the data set with descriptive variable names.
#Rename label file
cont <- 1
for(i in trpyFile){
  if(i=="1"){
    trpyFile[cont]="WALKING"
  }
  else if(i=="2"){
    trpyFile[cont]="WALKING_UPSTAIRS"
  }
  else if(i=="3"){
    trpyFile[cont]="WALKING_DOWNSTAIRS"
  }
  else if(i=="4"){
    trpyFile[cont]="SITTING"
  }
  else if(i=="5"){
    trpyFile[cont]="STANDING"
  }
  else if(i=="6"){
    trpyFile[cont]="LAYING"
  }
  else{
    trpyFile[cont]="UNDEFINED LABEL"
  }
  cont <- cont+1     
}

#Add features headers fpFile has V1 and V2 columns
#Point 3: Uses descriptive activity names to name the activities in the data set
trpxFileNew <- setNames(trpxFile, fpFile$V2)

#Add new column with label data
trpxFileNew2 <- cbind(trpyFile, trpxFileNew)

#Rename tpyFile with label
names(trpxFileNew2)[1] <- "label"

#Add new column with subject
trpxFileNew2 <- cbind(trpsFile, trpxFileNew2)

#Rename 'trpsFile' with 'subject'
names(trpxFileNew2)[1] <- "subject"


#Merge Test and Train Data
mergedData <- rbind(trpxFileNew2, tpxFileNew2)

#DataSet with mean an std
newDataSet <- subset(mergedData, select = grepl("subject|label|mean|std", names(mergedData)))

#Point 2: Extracts only the measurements on the mean and standard deviation for each measurement.

#View summary of new newDataSet
summary(newDataSet)
newDataSet %>% summarise_all(mean)
newDataSet %>% summarise_all(sd)

#Point 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
t<-addmargins(table(newDataSet$label, newDataSet$subject, dnn = c("SUBJECT", "ACTIVITY")))
View(t)