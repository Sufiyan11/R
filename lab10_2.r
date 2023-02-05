x<-c(9,	11,	13,	11,	15,	9	,12,	14)
y<-c(10,	12,	10,	14,	9,	8,	10)
print("enter the level of significance")
alpha<-scan()
n1<-length(x)
n2<-length(y)
sd1=round(sd(x),3)
sd2=round(sd(y),3)
print(paste("SD of x , SD of y :",sd1,",",sd2))
F=var.test(x,y)
cal=round(F$statistic,3)
if (sd1>sd2) { ftab<-qf(1-alpha,n1-1,n2-1)
} else ftab<-qf(1-alpha,n2-1,n1-1)
ftab=round(ftab,3)
if(cal>ftab){ op=">"
}else if(cal<ftab){ op="<"
}else op="="
print(paste("t cal(",cal,")",op,"t table(",ftab,")"))
if(op==">"){
  print("Ho is rejected")
}else print("Ho is accepted")
