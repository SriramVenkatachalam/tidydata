---
title: "Run Analysis"
author: "Sriram Venkatachalam"
date: "Friday, January 23, 2015"
output: html_document
---

Variable used:
=============

All the variables mentioned in the final data frame 'catsed_data', are either the mean or the standard deviation mesurements of all the subjects (inclused both the catogories, the test and the training data sets). Some of the variable are listed below and the others follow the same pattern.

tBodyAcc-mean()-X, tBodyAcc-mean()-Y,	tBodyAcc-mean()-Z,	tGravityAcc-mean()-X,	tGravityAcc-mean()-y, tGravityAcc-mean()-z etc;

More about the variables:
========================

'action' variable denotes the condition under which the measurements were obtained. It has 6 unique values such as; WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING were given unique labels from 1 through 6 and theses labels were used to match them up with the corresponding condition ('action' variable) of each subject.   

Mean function is applied using dcast function on the melted data frame. An independent tidy data set with the average of each variable for each activity and each subject was obtained by this action.

