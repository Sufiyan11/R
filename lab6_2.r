Mylength=function(a)
{
  c=0
  for(i in a)
    c=c+1
  return(c)
}
Mymean=function(a){
  sum=0
  n=Mylength(a)
  for(i in a)
  {
    sum=sum+i
  }
  return((sum/n))
}
StandardDeviation=function(a){
  n=Mylength(a)
  sum=0
  m=Mymean(a)
  for(i in a){
    sum=sum+((m-i)^2)
  }
  return(sqrt(sum/n))
}
print("Enter the Numbers")
a=scan()
print(paste("Standard Deviation : ",round(StandardDeviation(a),digits=2)))