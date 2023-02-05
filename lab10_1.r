x<-c(45,	73,	46,	124,	33,	57,	83,	34,	26,	17)
y<-c(36,	60,	44,	119,	35,	51,	77,	29,	24,	11)
print("enter the level of significance")
alpha<-scan()
print("Enter which test:")
test=scan(what='character')
d<-x-y
n<-length(d)
dbar<-mean(d)
std<-sd(d)
values<-c(dbar,std)
values=round(values,3)
print(paste("values of dbar and standard deviation of differences are",values[1],"and",values[2]))
t<-t.test(x,y,paired=TRUE)
cal=round(t$statistic,3)
print(paste("Table value for ",test,"-tailed test:"))
if(test=="two"){
tablevalue=qt(1-alpha, df=n-1)
cal=abs(cal)
}else if(test=="right"){ tablevalue<-qt(1-alpha/2, df=n-1)
}else tablevalue<-qt(alpha/2, df=n-1)
tablevalue=round(tablevalue,3)
if(cal>tablevalue){ op=">"
}else if(cal<tablevalue){ op="<"
}else op="="
print(paste("t cal(",cal,")",op,"t table(",tablevalue,")"))
if(test=="left"){ ans="<"
}else ans=">"
if(op==ans){
  print("Ho is accepted")
}else print("Ho is rejected")