require(ISLR)
fix(Smarket)
names(Smarket)
summary(Smarket)

pairs(Smarket )

?cor
str(Smarket)

cor(Smarket,use = "everything")

cor(Smarket [,-9])

attach(Smarket) 
plot(Volume,col="blue")

require(ggplot2)

ggplot(data = Smarket)+ geom_histogram(aes(x=Volume))

glm=glm(Direction???Lag1+Lag2+Lag3+Lag4+Lag5+Volume,family=binomial )
summary (glm )

coef(glm)

summary(glm)$coef
summary(glm)$coef[,3]

glm.p=predict(glm,type="response") 
summary(glm.p)
glm.p [1:10]

contrasts (Direction )

glm.prd=rep("Down",1250)
summary(glm.prd)
glm.prd[glm.p >.5]="Up"
summary(glm.prd[glm.p >.5]="Up")

table(glm.prd ,Direction )
mean(glm.prd==Direction )

(507+145) /1250

train=(Year<2005) 
Smarket.2005= Smarket[!train,]
head(train)
head(Smarket.2005)
dim(Smarket.2005)

Direction.2005= Direction[!train]
head(Direction.2005)

glm1=glm(Direction???Lag1+Lag2, family=binomial, subset=train)
head(glm1)

glm.p1=predict(glm1 ,Smarket.2005, type="response") 
head(glm.p1)
glm.prd1=rep("Down",252) 
head(glm.prd1)
glm.prd1[glm.p1 >.5]="Up"
table(glm.prd1 ,Direction.2005)

mean(glm.prd1==Direction.2005)
106/(106+76)

predict (glm1 ,newdata=data.frame(Lag1=c(1.2,1.5), Lag2=c(1.1 , -0.8)),type="response")
