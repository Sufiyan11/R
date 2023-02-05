Mylength=function(a)
{
  c=0
  for(i in a)
    c=c+1
  return(c)
}
Mysort=function(a)
{
  n=Mylength(a)
  for(i in 1:(n-1))
  {
    m=i
    for(j in (i+1):n)
    {
      if(a[m]>a[j])
        m=j
    }
    temp=a[i]
    a[i]=a[m]
    a[m]=temp
  }
  return(a)
}
Myrange=function(a){
  n=Mylength(a)
  a=Mysort(a)
  return(a[n]-a[1])
}
a=scan()
print(paste("Range : ",Myrange(a)))
print(paste("Range Built-in : ",max(a)-min(a)))