##Loading Data
library(MatchIt)
mydata <- read.csv("E:/datascience/ML/PSM/newyork.csv")
attach(mydata)
mydata[1:10,]

m.out = matchit(stw ~ tot + min + dis ,  data = mydata , method = "nearest" , ratio = 1)
summary(m.out)
plot(m.out , type = "jitter")
plot(m.out , type = "hist")


m.data1 <- match.data(m.out)
write.csv(m.data1 , file = "E:/datascience/ML/PSM/newyork.csv")
