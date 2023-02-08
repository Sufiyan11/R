x<-c(108,104,109,116,111,113,114,112,102,112)
y<-c(105,109,110,109,106,112,108,107,104,108)
print("Enter level of significance:")
alpha = scan()
t<-wilcox.test(x,y,paired = TRUE,alternative = "two.sided")
print(t)
if (t$p.value > alpha){
  print("Accepted")
}else{
  print("Rejected")
}