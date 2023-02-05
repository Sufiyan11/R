Harmonic=function(a){
  sum=0
  n=0
  for(i in a)
  {
    sum=sum+(1/i)
    n=n+1
  }
  return(n/sum)
}
a=c(1,2,3,4,5,6,7,8,9)
print(paste("Harmonic Mean : ",round(Harmonic(a),digits=2)))