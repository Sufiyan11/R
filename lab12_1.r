x<-c(7, 3, 2, 7, 5, 4, 9, 15, 6, 6, 1, 6, 8, 10, 12)
t<-ks.test(x,"pexp",5)
print("Enter level of singnificance:")
alpha = scan()
print(t)
if (t$p.value > alpha){
  print("Accepted")
}else{
  print("Rejected")
}