library(ggplot2)
library(grid)
library(gridExtra)

sports<-UWvMSU_1.22.13
head(sports)

#Create a dataframes that are sorted by time
df<-sports[order(sports$time),]
#Separate by team
MSU<-df[df[,2] == "MSU",]
UW<-df[df[,2] == "UW",]
#Create empty vector for each team
ssMSU<-numeric(nrow(MSU))
ssUW<-numeric(nrow(UW))

#Sum score cumulatively
ssMSU = cumsum(MSU$score)
MSU<-cbind(MSU,ssMSU)
head(MSU)
ssUW = cumsum(UW$score)
UW<-cbind(UW,ssUW)
head(UW)

#plot #This below is incorrect until cumulative sums are done

plot<-ggplot() + 
  geom_point(data = MSU, aes(x = time, y = ssMSU), color = "red") +
  geom_point(data = UW, aes(x = time, y = ssUW), color = "blue") +
  xlab('Time') +
  ylab('Score')+ggtitle("UW vs MSU")
plot+geom_point()

