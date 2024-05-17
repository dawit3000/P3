library(dplyr)
library(randomNames)
schedule<-read.csv("College_Fall_Classes_Schedule_Example.csv")
schedule<-subset(schedule,INSTRUCTOR !="") #Classes with instructors only
schedule<-filter(schedule, P.of.T==1) #Session 1 Classes only
original_names<-unique(schedule$INSTRUCTOR)
## original_names<-subset(original_names,original_names !="") 
random_names<-randomNames(length(original_names)) 
for(i in 1:length(original_names)) 
{
  schedule[schedule == schedule$INSTRUCTOR[i] ]<-random_names[i]
}
schedule<-select(schedule, 1:3,6, 8:12,14)
  
write.csv(schedule, "X-College_Fall_Classes_Schedule.csv", row.names=FALSE)