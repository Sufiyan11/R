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
MyQuartile=function(a){
  n=Mylength(a)
  a=Mysort(a)
  if(n%%2==0){
    i3=(3*n)/4+1
    i1=n/4
  }
  else{
    i3=(3*(n+1))/4;
    i1=(n+1)/4;
  }
  q=(a[i3]-a[i1])/2
  return(q)
}
a=scan()
print(paste("Quartile Deviation : ",MyQuartile(a)))