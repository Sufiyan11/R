lower <- c(1,3,5,7,9)
upper <- c(3,5,7,9,11)
f <- c(1,4,6,4,1)
x <- (lower+upper)/2
fx = f*x
fx2=x*fx
sumf=sum(f)
mew= sum(fx)/sumf
x2 = f*((x-mew)^2)
sigma = (sum(x2)/sumf)^(0.5)
print(sigma)
z1 = (lower-mew)/sigma
z2 = (upper-mew)/sigma
f1 = pnorm(z1)
f2 = pnorm(z2)
P = round(f2-f1,digits=2)
NP = sumf*P
fe = round(NP)
mydata <- data.frame(lower,upper,x,f,fx,fx2,z1,z2,P,NP,fe)
print(mydata, row.names = FALSE)
res = round(sum(((f - NP)^2)/NP),digits=2)
print(paste("Calculated value: ", res))
tableVal = round(qchisq(.95, df=length(x)-1),digits=2)
print(paste("Table value: ", tableVal))
if (res < tableVal){
  print("H0 is accepted")
} else print("H0 is rejected")