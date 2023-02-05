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
MeanDeviation=function(a){
  n=Mylength(a)
  sum=0
  m=Mymean(a)
  for(i in a){
    sum=sum+abs(m-i)
  }
  return(sum/n)
}
a=scan()
print(paste("Mean Deviation : ",round(MeanDeviation(a),digits=2)))