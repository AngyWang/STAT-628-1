# 628-module1-group2
This repository contains work related to STAT 628, instructed by Prof. Hyunseung Kang. We built a simple and robust model for predicting men's body fat percentage. It contains my collaboration work with my classmates Wenjia Xie and Zhendong Zhou.

*Bodyfat_summary.ipynb* is an summary of what we did presented in a Jupyter Notebook. The results shows that the percentage of body fat of a male is can be predicted by *Weight* and *Abdomen*.

There are four folders providing more details in our main project, *code*, *image*, *data*.

### code
There are two R code files:

* cleandata.R cleans the data and produces some good looking plots for the distribution of some variables. 
* main.R contains data analysis using linear regression with squared loss and Huber loss. It also produces plots for regression diagnosis. 

### image
This folder contains figures produced in our analysis.

### data
*BodyFat.csv* is the raw data set of available measurements include age, weight, height, bmi, and various body circumference measurements. In particular, the variables listed below (from left to right in the data set) are: 

Percent body fat from Siri's (1956) equation  
Density determined from underwater weighing  
Age (years)  
Weight (lbs)  
Height (inches)  
Adioposity (bmi)
Neck circumference (cm)  
Chest circumference (cm)  
Abdomen 2 circumference (cm)  
Hip circumference (cm)  
Thigh circumference (cm)  
Knee circumference (cm)  
Ankle circumference (cm)  
Biceps (extended) circumference (cm)  
Forearm circumference (cm)  
Wrist circumference (cm)  

*new_BodyFat.Rdata* is the Rdata after removing all outliers from the original dataset.
