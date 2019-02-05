rm(list=ls())
library(ggplot2)

data=read.csv("BodyFat.csv")
attach(data)
str(data)
summary(data)

# bodyfat
par(mfrow=c(1,1))
ggplot(data, aes(x=BODYFAT)) + 
  geom_histogram(color="darkblue", fill="lightblue") +
  geom_vline(aes(xintercept=mean(BODYFAT)),color="blue",linetype="dashed") +
  labs(x="Body Fat %",y="Count")
data[c(which(BODYFAT==0),which(BODYFAT>40)),]

# weight
ggplot(data, aes(x=WEIGHT)) + 
  geom_histogram(color="darkblue", fill="lightblue") + 
  geom_vline(aes(xintercept=mean(WEIGHT)),color="blue",linetype="dashed") +
  labs(x="Weight (lbs) ",y="Count")
data[which(WEIGHT>300),]
## (39th) The 39th man is the heaviest one, also his adiposity, neck, chest, abdomen, hip, thigh, knee, biceps and wrist are all the largest one. Therefore we suppose the data is correct

# height
ggplot(data, aes(x=HEIGHT)) +
  geom_histogram(color="darkblue", fill="lightblue") +
  geom_vline(aes(xintercept=mean(HEIGHT)),color="blue",linetype="dashed") +
  labs(x="Height (inch) ",y="Count")
data[which(HEIGHT<40),]
## (42nd) The 42nd man is 29.5 inches tall, equals to 74.93 cm, however his weight is 205lbs which seems really unreasonable. We delete this data.
### 703*weight/height^2=adiposity
sqrt(703*205/29.9)

# adiposity
hist(ADIPOSITY,breaks=30,main="Histogram of Adiposity",xlab="Adiposity (bmi)")
data[which(ADIPOSITY>35),]
## The 39th is the heaviest one we talked before.
## (41st)(216th) The 41st and 216th also have large data on other measurement, we assume the data are correct.

# density seems reasonable
hist(DENSITY,breaks = 30,main = "Histogram of Density", xlab="Density")

# age seems reasonable
hist(AGE,breaks=30,main="Histogram of Age",xlab="Age (yrs)")
data[which(AGE==max(AGE)),]
## (79th) There is an extreme old man.(79th)


par(mfrow=c(2,2))
# neck
hist(NECK,breaks=30,main="Histogram of Neck",xlab="Neck Circumference (cm)")
data[which(NECK>45),]
## The largest one is the 39th

# Chest
hist(CHEST,breaks=30,main="Histogram of Chest",xlab="Chest Circumference (cm)")
data[which(CHEST>125),]
## 39th and 41st

# Abdomen
hist(ABDOMEN,breaks=30,main="Histogram of Abdomen",xlab="Abdomen 2 Circumference (cm)")
data[which(ABDOMEN>140),]
## 39th

# Hip
hist(HIP,breaks = 30,main="Histogram of Hip",xlab="Hip Circumference (cm)")
data[which(HIP>130),]
## 39th

# Thigh
hist(THIGH,breaks = 30,main="Histogram of Thigh",xlab="Thigh Circumference (cm)")
data[which(THIGH>80),]
## 39th

# Knee
hist(KNEE,breaks = 30,main="Histogram of Knee",xlab="Knee Circumference (cm)")
data[which(KNEE>47),]
## 39th

# Ankle 
hist(ANKLE,breaks = 30,main="Histogram of Ankle",xlab="Ankle Circumference (cm)")
data[which(ANKLE>28),]
## 39th
## it seems nothing unnormal with 31st and 86th

# Biceps
hist(BICEPS,breaks = 30,main="Histogram of Biceps",xlab="Biceps (extended) Circumference (cm)")
data[which(BICEPS>40),]
## 39th

par(mfrow=c(1,2))
# Forearm seems reasonable
hist(FOREARM,breaks = 30,main="Histogram of Forearm",xlab="Forearm Circumference (cm)")

# Wrist seems reasonable
hist(WRIST,breaks = 30,main="Histogram of Wrist",xlab="Wrist Circumference (cm)")

#################################
# In conclusion, delete 182nd, 42nd.
# The 216th, 39th, 41st are strange but reasonable.



























