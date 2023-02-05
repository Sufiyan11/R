data=read.csv("moviesdata.csv")
Run=data$runtime[1:200]
hist(Run,xlab="Director",col=rainbow(length(Run[1:6])),main="movie count")
