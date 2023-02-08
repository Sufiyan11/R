x<-c(36,29,44,28,40,50,39,47,33)
t<-wilcox.test(x,mu=35, alternative = "two.sided")
print(t)
print("Enter level of significance:")
alpha = scan()
if (t$p.value > alpha){
  print("Accepted")
}else{
  print("Rejected")
}