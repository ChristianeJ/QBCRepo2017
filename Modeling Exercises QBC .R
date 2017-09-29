#### Modeling Exercises ####

#1.a Ricker model function 

RickMod <- function(ttMax, rr, NI, kk) { 
   morty <- matrix(NA,1,ttMax)
   morty[1] <- NI
   for (tt in 1:ttMax) {
     morty[tt+1] <- morty[tt]*exp(rr*(1-(morty[tt]/kk)))
   }
   plot(1:(ttMax+1),morty, main="Ricker Model of Density Dependent Population Growth",
        xlab="Time (years)", ylab ="Population", col="purple")
   print(morty)
}
RickMod(20,1.25,200,450)

#1.b
RickMod <- function(ttMax, rr, NI, kk) { 
  morty <- matrix(NA,1,ttMax)
  morty[1] <- NI
  for (tt in 1:ttMax) {
    morty[tt+1] <- morty[tt]*exp(rr*(1-(morty[tt]/kk)))
  }
  plot(1:(ttMax+1),morty, main="Ricker Model of Density Dependent Population Growth",
       xlab="Time (years)", ylab ="Population", col="purple")
  
}
RickMod(100,10,10,250) #crashes to 0 almost immedaitely 

RickMod(100,3,10,400) #random values 

RickMod(100,1,10,1000) #n reaches equilibrium at k 

RickMod(100,2,250,500) #decaying osciallation 

RickMod(100,2,499,500) #consistent oscillation 

RickMod(100,.01,200,400) #Linear growth 

#1.c 
RickMod6 <- function(ttMax, rr, NI, kk) { 
morty <- matrix(NA,1,ttMax)
morty[1] <- NI
for (tt in 1:ttMax) {
  morty[tt+1] <- morty[tt]*exp(rr*(1-(morty[tt]/kk)))
}
plot(1:(ttMax+1),morty, main="Dens. Depen. Pop. Growth",
     xlab="Time (years)", ylab ="Population", col="purple",type = "l")
}

par(mfrow=c(2,3))
RickMod6(100,10,10,250) #crashes to 0 almost immedaitely 

RickMod6(100,3,10,400) #random values 

RickMod6(100,1,10,1000) #n reaches equilibrium at k 

RickMod6(100,2,250,500) #decaying osciallation 

RickMod6(100,2,499,500) #consistent oscillation 

RickMod6(100,.01,200,400) #Linear growth 

##1.d
Ni = 20
kk=1000 
ttMax = 100
rr = .2
#At what time will the population reach half carrying capacity? 
#t = ? when Nt >= k/2
#output time series 

#Ricker function 
RickMod <- function(ttMax, rr, NI, kk) { 
  morty <- matrix(NA,1,ttMax)
  morty[1] <- NI
  for (tt in 1:ttMax) {
    morty[tt+1] <- morty[tt]*exp(rr*(1-(morty[tt]/kk)))
  }
  plot(1:(ttMax+1),morty, main="Ricker Model of Density Dependent Population Growth",
       xlab="Time (years)", ylab ="Population", col="purple")
  print(morty)
}
nRec <- (RickMod(100,.2,20,1000))
which(nRec >= kk/2)[1]


##1.e
#Write a script that runs the necessary simulations and collects the necessary data to plot how
# tK/2 depends on r, for the range of r from 0.1 to 0.9.

rr <- seq(0.1,0.9, by=0.1)
NI <- 20
kk <- 1000
ttMax <- 100 


#Ricker function
RickMod3 <- function(ttMax, rr, NI, kk) { 
  morty <- matrix(NA,1,ttMax)
  morty[1] <- NI
  for (tt in 1:ttMax) {
    morty[tt+1] <- morty[tt]*exp(rr*(1-(morty[tt]/kk)))}
  plot(1:(ttMax+1),morty, main="Ricker Model of Density Dependent Population Growth",
       xlab="Time (years)", ylab ="Population", col="purple")
  morty
}

#Grab Half kk index value function + plot

Grab.Half <- function(all.values,kk) {
  Half.Index<-(which(all.values >= kk/2)[1])
  return(Half.Index)
}

#for loop
Half.Index <- matrix(NA,nrow=1,ncol=length(rr))
for (dd in 1:length(rr)) {
   Half.Index[dd] <- Grab.Half(RickMod3(ttMax, rr[dd], NI, kk),kk)
   plot(rr,Half.Index, xlab="R value", ylab="Time to Half Carrying Capacity", col="blue")}


##1.f 
#Psuedo-code for a joint sensitivity analysis for two parameters 
#Set vectors for r and K 
#Set values for time and initial population 
#Create matrix for all values from the two vectors r and k 
#Create for loop to run these two vectors through a ricker model
  #within the for loop, values should be placed within the matrix 
  #plot the results at the end 
#loop should be a nested loop

##1.g 
RickMod3 <- function(ttMax, rr, NI, kk) { 
  morty <- matrix(NA,1,ttMax)
  morty[1] <- NI
  for (tt in 1:ttMax) {
    morty[tt+1] <- morty[tt]*exp(rr*(1-(morty[tt]/kk)))
  }
  return(morty)
}
#Set vectors for r and K
rr <- seq(0.2,1.1, by=0.1)
kk <- seq(100,280, by=20)
#Set values for time and initial population 
ttMax = 50
NI = 75
#Create matrix for all values from the two vectors r and k 
dble.matx <- matrix(NA,nrow=length(rr),ncol=length(kk))
#Create for loop to run these two vectors through a ricker model
#within the for loop, values should be placed within the matrix 
for (jj in 1:length(rr)){ 
  for (ii in 1:length(kk)) {
    temp <- RickMod3(ttMax,rr[jj],NI,kk[ii])
    dble.matx[jj,ii] <- temp[5]
  }
}
#plot the results at the end 
plot_ly(z = ~dble.matx, type = "contour")

