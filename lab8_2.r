Employeecategories=c("labour","clerks","technicians","Executives","Total")
type1=c(190,82,23,5)
type2=c(243,44,78,12)
type3=c(197,44,34,8)
type1=c(type1,sum(type1))
type2=c(type2,sum(type2))
type3=c(type3,sum(type3))
Total=c()
for(i in 1:5){
  Total=c(Total,type1[i]+type2[i]+type3[i])
}
mydata=data.frame(Employeecategories,type1,type2,type3,Total)
print(mydata)
m=as.table(rbind(c(190,243,197),c(82,44,44),c(23,78,34),c(5,12,8)))
test<-chisq.test(m)
print("Expected values:")
print(test$expected,3)
value=round(test$p.value,digits=3);
s=round(test$statistic,digits=2)
if(value>0.05){
  op="< or ="
}else op=">"
print(paste("X2 cal(",s,")",op,"X2 table"))
if(op==">"){
  print("Ho is rejected")
}else print("Ho is accepted")