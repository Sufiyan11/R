x<-c(40,30,40,45,55,30)
y<-c(50,55,45,55,60,40)
print("Enter level of singnificance:")
alpha = scan()
t<-ks.test(x,y,paired=T)
print(t)
if (t$p.value > alpha){
  print("Accepted")
}else{
  print("Rejected")
}