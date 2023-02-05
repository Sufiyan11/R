data=read.csv("moviesdata.csv")
Title=data$title[1:5]
Run=data$runtime[1:5]
barplot(xlab="Title",ylab="Runtime",names.arg=Title,Run,col=rainbow(5),main="Movies_Run")
legend("topright",fill=rainbow(5),Title,cex=0.5)