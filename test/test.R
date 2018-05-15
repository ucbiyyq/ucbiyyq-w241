getwd()
setwd("C:/Users/yangyq/workspaces/ucbiyyq/w241/test")
getwd()


mydata <- data.table( read.csv("testdata.csv") )

summary(mydata)

hist(mydata$team1,breaks=10)
sd(mydata$team1)
mydata[,list(team1avg=mean(team1), team2avg=mean(team2), team3avg=mean(team3)),by=month]

mydata[,list(team1avg=sum(team1), team2avg=sum(team2), team3avg=sum(team3)),by=month]

mydata[,list(team1avg=mean(team1), team2avg=mean(team2), team3avg=mean(team3)),by=month][
    plot(
        month
        ,team1avg
    )    
]


