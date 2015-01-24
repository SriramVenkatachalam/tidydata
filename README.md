---
title: "Run Analysis"
author: "Sriram Venkatachalam"
date: "Friday, January 23, 2015"
output: html_document
---
=======================================================================================================================
Human Activity Recognition Using Smartphones Datasets
Version 1.0
=======================================================================================================================

About the study:
===============

  The experiments have been carried out with a group of 30 volunteers. The experiments were performed on two groups and two different data sets; training and test data sets were obtained. This analysis mainly concentrates on the mean and standard deviation of various measuremnts (totally 66 variables). These desired parameters were extracted from the original data set that was provided.
  
The following are the questions that were answered in this analysis:
===================================================================

1) You should create one R script called run_analysis.R that does the following. 
2) Merges the training and the test sets to create one data set.
3) Extracts only the measurements on the mean and standard deviation for each measurement. 
4) Uses descriptive activity names to name the activities in the data set
5) Appropriately labels the data set with descriptive variable names. 
6) create an independent tidy data set with the average of each variable for each activity and each subject.

The datasets includes the following files:
=========================================

1) 'README.Rmd'
2) 'CodeBook.Rmd'
3) 'run_analysis.R'

Steps followed in achieving the result:
======================================

1) The training and test data sets were compiled along with the details pertaining to the subject and also the activity labels using 'merge ()' function
2) Two datasets (training data and test data) were rbinded and a dataframe with a dimension of 10299 x 563 was created.
3) Column names were assigned to this data frame using 'features.txt' file; that contained the column names of the former data frame.
4) 'grep()' and 'setdiff()' functions were used to extract the desired columns (mean and standard deviation of the measurements).
5) 'melt()' and 'dcast()' functions were used to obtain the independent data set that has been in the 6th question.

Notes: 
======
- Features were already normalized and bounded within [-1,1] in the given document.
- Each feature vector is a row on the text file.