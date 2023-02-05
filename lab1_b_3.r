data=read.csv("moviesdata.csv")
Title=data$title[1:5]
Run=data$runtime[1:5]
plot(xlab="Month",ylab="Floods",type="o",Run,col=rainbow(5),main="Flood Map")
