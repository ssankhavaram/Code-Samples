cancer<-read.csv(file.choose())
attach(cancer)

#Question 1 
summary(lm(satisfaction~studygroup))

#Question 2 
(summary(lm(satisfaction~studygroup + age)))

#Question 3 
detach(cancer)
female<-subset(cancer,sexm==0)
male<-subset(cancer,sexm==1)

summary(lm(satisfaction~studygroup + age, data=male))
summary(lm(satisfaction~studygroup + age, data=female))

#Simple linear regression
summary(lm(dependent~independent))

#Multivariate linear regression
summary(lm(dependent~ind1 + ind2 + ind3))

#Check effect modification? 
detach(datasetname)
subset1name<-subset(datasetname, thing=0)
subset2name<-subset(datasetname, thing=1)

#subset() is the command, subset names are whatever you want, thing is the variable
summary(lm(dpend~ind1 + ind2 + ind3, data=subset1name))
summary(lm(dpend~ind1 + ind2 + ind3, data=subset2name))