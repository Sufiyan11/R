x=c(0,1,2,3,4,5,6,7)
f=c(7,6,19,35,30,23,7,1)
fx=f*x;
sumfx=sum(fx)
sumf=sum(f)
n=length(x)-1
p=round((sumfx/sumf)/n,digits=4)
q=1-p
px=c()
val=c()
npx=c()
for(i in x){
  fac=factorial(n)/(factorial(i)*factorial(n-i))
  cal=round((fac*(p^i)*(q^(n-i))),digits=4)
  px=c(px,cal)
  cal=cal*sumf
  npx=c(npx,cal)
}
for(i in 1:length(x)){
  val=c(val,round((((npx[i]-f[i])^2)/npx[i]),digits=2))
}
totaldata=data.frame(x,f,fx,px,npx,val)
print(totaldata)
tablevalue=round(qchisq(0.95,n),2)
print(paste("Calculated X2 value : ",sum(val)))
print(paste("X2 Table value at L.O.S of 5% and n=",n+1," : ",tablevalue))
if(sum(val)>tablevalue){ 
  op=">"
}else if(sum(val)<tablevalue){
  op="<"
}else op="="
print(paste("X2 cal",op,"x2 table"))
if(op==">"){ 
  print("Ho is rejected")
}else print("Ho is accepted")