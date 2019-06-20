lowbtw<-read.csv(file.choose())
attach(lowbtw)

#Dummy variable prep
black<-ifelse(RACE==2,1,0)
other<-ifelse(RACE==3,1,0)

#Question 1
summary(glm(LOW~AGE,family=binomial(link=logit)))
exp(-0.05115)
summary(glm(LOW~LWT,family=binomial(link=logit)))
exp(-0.01406)
summary(glm(LOW~black+other,family=binomial(link=logit)))
exp(0.8448)
exp(0.6362)
summary(glm(LOW~SMOKE,family=binomial(link=logit)))
exp(0.7041)
summary(glm(LOW~PTL,family=binomial(link=logit)))
exp(0.8018)
summary(glm(LOW~HT,family=binomial(link=logit)))
exp(1.2135)
summary(glm(LOW~UI,family=binomial(link=logit)))
exp(0.9469)
summary(glm(LOW~FTV,family=binomial(link=logit)))
exp(-0.1351)

detach(lowbtw)

#Question 2 
ovarian<-read.csv(file.choose())
attach(ovarian)
detach(ovarian)
attach(ovarian)
library(survival)
plot(survfit(Surv(futime,fustat) ~ rx),xlab="Survival Time",ylab="Probability of Survival",  main="Plot of Survival Time by Treatment Group",col=c("red","blue"),lty=2:3)
legend(600,1,c("Standard","Combination Therapy"),lty=2:3,col=c("red","blue"))

#Question 3 
survdiff(Surv(futime, fustat)~rx)

#Question 4
coxph(formula = Surv(futime, fustat) ~ rx + age)
exp(-0.8040)
exp(0.1473)
