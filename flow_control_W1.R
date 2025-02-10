#My First Repo
install.packages("tidyverse")
library(tidyverse)

#Flow control textbook reading

x<-21
xvec<-c(1:10,"string")

#if: the if statement uses an operator to assess whether the value if TRUE or False
#use when you want to do a function or analysis only if the input meets certain criteria for example. 

if(x>100){ #is x greater than 100?
  print("x > 100") #if true 
} else{
    print("x<=100") #if false
}

#use regular brackets for the if function: if() followed by two sets of curly brackets containing {run if true} else {run if false}

#you can also do ifelse - which does the same but is compact for simple versions
ifelse(x > 100, "x >100", "x <= 100")

#you can also do a nested if for accounting for more outcomes (bifurcating tree) 
if(x > 100){
  print("x > 100")
  if(x > 200){
    print("x > 200")
  }
}else{
  if(x == 100){
    print("x=100")
  }else {
    print("x<100")
  }
}

#Loops: do the same thing over and over until some condition is met. we set a 'counter' variable and loop through each value of the counter variable 
#loop through 1 - 5 
for(i in 1:5){
  print(paste(x,i,sep=":"))
}

#loop through the elements of a vector directly
for(i in xvec){
  print(i)
} #prints 1-10 and string
for(i in 1:length(xvec)){
  print(xvec[i])
}

#you can also include a counter variable 
#counter variable at the end, setting initial value to 1 before the loop begins
count1<-1 
count10<-10

for(i in 1:5){
  print(paste("count1 =", count1))
  print(paste("count10 =", count10))
  count1<-count1+1
  count10<-count10*10
}

#counter variable at the start, setting teh initial value to 0 before the loop begins

countbefore<-0
countafter<-0

for(i in 1:5){
  countbefore<-countbefore+1
  print(paste("before =", countbefore))
  print(paste("after =", countafter))
  countafter<-countafter+1
}

#nested loops: A loop inside of another (counters are useful)
#example: we are looping through a vector of length 3, tracked with i. then for each i we do a second loop tracked by j 

LoopCount <- 0 
for(i in 1:3){
  for(j in 1:2){
    LoopCount<-LoopCount+1
    print(paste("Loop =", LoopCount))
    print(paste("i =", i))
    print(paste("j =", j))
  }
}

#while(){} Loop
#iterates until some condition is met inside the loop - called the exit condition
count<-0
while(count<x){
  print(count)
  count <- count+1
}

#modulo:if you want to do something every 2, or 3, or N iterations of a loop, you can divide by N and determine tif the dividend is zero
for(i in 1:9){
  if(i %% 3 ==0){
    print(paste("iteration:", i))
  }
}

#Faster Loops: 
#first is a slow loop on the central limit theorem:
#first, sample 1000 numbers fri a random normal distribution then calculate the average, second we would repeat this for 5000 iterations, then calcuate the average of these 500 iterations (mean of means)

iters<- 500 #number of iterations
OutVector<-NA
start<-Sys.time()
for(i in 1:iters){
  TempMean<-NA
  for(j in 1:1000){ #one loop per sample
   TempMean[j]<-rnorm(1) 
  }
  OutVector[i]<-mean(TempMean)
}
Sys.time()-start
paste("Mean of Means=",mean(OutVector))

#fast loop:
Iters<-500
OutVector<-vector("numeric", Iters)
Start<-Sys.time()
for(i in 1:Iters){
  TempMean<-vector("numeric", 1000)
  for(j in 1:100){
    TempMean[j]<-rnorm(1)
  }
  OutVector[i]<-mean(TempMean)
}
Sys.time()-Start

paste("Mean of means =", mean(OutVector))

#even faster:
Iters<-500 
OutVector<-vector("numeric", Iters)
OutMean<-function(x){
  return(mean(rnorm(1000)))
}

Start<-Sys.time()
OutVector<-sapply(OutVector,FUN=OutMean)
Sys.time()-Start
paste(mean(OutVector))

