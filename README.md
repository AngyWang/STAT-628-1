# 628-module1-group2
This repository contains work related to STAT 628, instructed by Prof. Hyunseung Kang. We built a simple and robust model for predicting men's body fat percentage. 

## Link to our web-based app
- [Body fat percentage Calculator](https://zhendong.shinyapps.io/bodyfat_app/)

## Prerequisite

In order to perform regression with Huber loss, installation of the package *hqreg* is required.

```
install.packages("hqreg")
```


## Summary
*Bodyfat_summary.ipynb* is an summary of what we did presented in a Jupyter Notebook. The results shows that the percentage of body fat of a male is can be predicted by *Weight* and *Abdomen*.

There are four folders providing more details in our main project, *code*, *image*, *data*.

## Code
There are two R code files:

* cleandata.R cleans the data and produces some good looking plots for the distribution of some variables. 
* main.R contains data analysis using linear regression with squared loss and Huber loss. It also produces plots for regression diagnosis. 

## Image
This folder contains figures produced in our analysis.

* Bodyfat.jpeg is the histogram of Bodyfat for the raw data.
* Height.jpeg is the histogram of Height for the raw data.
* Residual_plot.pdf is the residual plots for both squared loss and Huber loss.
* Residual_plot_LSE.pdf is the residual plots for least square estimates.
* Weight.jpeg is the histogram of Weight for the raw data.

## Data
*BodyFat.csv* is the raw data set of available measurements include age, weight, height, bmi, and various body circumference measurements. In particular, the variables listed below (from left to right in the data set) are: 

* Percent body fat from Siri's (1956) equation  
* Density determined from underwater weighing  
* Age (years)  
* Weight (lbs)  
* Height (inches)  
* Adioposity (bmi)
* Neck circumference (cm)  
* Chest circumference (cm)  
* Abdomen 2 circumference (cm)  
* Hip circumference (cm)  
* Thigh circumference (cm)  
* Knee circumference (cm)  
* Ankle circumference (cm)  
* Biceps (extended) circumference (cm)  
* Forearm circumference (cm)  
* Wrist circumference (cm)  

*new_BodyFat.Rdata* is the Rdata file after data cleaning.

## Authors
* **Linquan Ma** - (lma75@wisc.edu)
* **Zhendong Zhou** - (zzhou339@gmail.com)
* **Wenjia Xie** -　(wxie42@wisc.edu)
