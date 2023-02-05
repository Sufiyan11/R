x<-c(59,	68,	44,	71,	63,	46,	69,	54,	48)
y<-c(50,	36,	62,	52,	70,	41)
print("enter the level of significance")
alpha<-scan()
n1<-length(x)
n2<-length(y)
sd=sqrt((((n1-1)*sd(x)^2)+(n2-1)*sd(y)^2)/(n1+n2-2))
value=abs(round((mean(x)-mean(y))/(sd*sqrt((1/n1)+(1/n2))),4))
print(paste("Calculated value of t:",value))
tablevalue=round(qt(1-alpha/2, df=n1+n2-2),3)
print(paste("Table value for two-tailed test:",tablevalue))
if(value<tablevalue){ op="<"
}else if(value>tablevalue){ op=">"
}else op="="
if(op=="<"){
  print("Ho is accepted")
}else print("Ho is rejected")