x=c(0,1,2,3,4,5,6,7,8)
f=c(103,143,98,42,8,4,2,0,0)
fx=f*x
sumfx=sum(fx)
sumf=sum(f)
n=length(x)-1
p=(sumfx/sumf)
px=dpois(0:n,lambda=p)
px=round(px,digit=5)
npx=round(sumf*px,digits=5)
val=c()
for(i in 0:n+1){
  val=c(val,round((((npx[i]-f[i])^2)/npx[i]),digits=2))
}
totaldata=data.frame(x,f,fx,px,npx,val)
print(totaldata)
tablevalue=round(qchisq(0.95,df=n),digits=2)
print(paste("Calculated X2 value : ",sum(val)))
print(paste("X2 Table value at L.O.S of 5% and n=",n," : ",tablevalue))
if(sum(val)>tablevalue){ 
  op=">"
}else if(sum(val)<tablevalue){
  op="<"
}else op="="
print(paste("X2 cal",op,"x2 table"))
if(op==">"){ 
  print("Ho is rejected")
}else print("Ho is accepted")
