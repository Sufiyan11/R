x<-c(9,11,15)
y<-c(6,8,10,13)
t<-wilcox.test(x,y,alternative = "two.sided")
print(t)
print("Enter level of significance:")
alpha = scan()
if (t$p.value > alpha){
  print("Accepted")
}else{
  print("Rejected")
}