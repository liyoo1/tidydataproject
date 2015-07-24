# tidydataproject
Code for producing tidy data set of means for project for Getting and Cleaning Data course

The data manipulated by this code originated from the following source:

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

Data was generated from a study in which 30 subjects performed six activities while wearing a Samsung smartphone that was equipped to gather physical data from the participants.  The activities were walking, walking upstairs, walking downstairs, sitting, standing, and laying.  Data from some of the volunteers were grouped into a "test" category while other volunteers' data were put in the "train" category.

The code run_analysis.R will:
1.  bind together file info that identifies subject and activity for all of the collected data
2.  more specifically label the dataset so that all testing variables and activities are made explicit
3.  subset out the variables that refer to means or standard deviation calculations from the data
4.  generate a new dataset where means are calculated for each subject and each activity
