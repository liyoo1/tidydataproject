mergedtest<-cbind(testdatasubjects,testdatalabels,testdata) #binds test folder files
colnames(mergedtest)[1]<-"subject" #changes col name from testdatasubjects 
colnames(mergedtest)[2]<-"labels" #changes col name from testdatalabels
mergedtrain<-cbind(traindatasubjects,traindatalabels,traindata) 
colnames(mergedtrain)[1]<-"subject"
colnames(mergedtrain)[2]<-"labels"
mergedData=merge(mergedtest,mergedtrain,all=TRUE) #merges test and train files, will result in sorting of rows
names(mergedData)[3:563] <- paste(features$V2) #gives variables more specific feature names
meanstdfeatures<-mergedData[,grep("mean|std|subject|label",colnames(mergedData))] 
    #selects all columns with mean or std in features, plus subject and labels columns
meanstdfeatures$labels[meanstdfeatures$labels=="1"]<-"Walking" 
    #changes labels called 1 more descriptively to the activity "walking"
meanstdfeatures$labels[meanstdfeatures$labels=="2"]<-"Walking_upstairs" 
meanstdfeatures$labels[meanstdfeatures$labels=="3"]<-"Walking_downstairs"
meanstdfeatures$labels[meanstdfeatures$labels=="4"]<-"Sitting" 
meanstdfeatures$labels[meanstdfeatures$labels=="5"]<-"Standing" 
meanstdfeatures$labels[meanstdfeatures$labels=="6"]<-"Laying"
msfmelt<-melt(meanstdfeatures, id=c("subject","labels")) #melts df and retains id columns
meanscalc<-acast(msfmelt,subject~labels,mean) #casts multidimensional array
