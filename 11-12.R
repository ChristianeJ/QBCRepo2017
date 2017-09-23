#########################################################################################
"11"
#########################################################################################
"11.0.0.0.1 Exercise: Make a copy of Intro2.R under a new name, and modify the copy so 
that it does linear regression of algal growth rate on the natural log of light intensity,
LogLight=log(Light), and plots the data appropriately."

course.url <- "http://kingaa.github.io/R_Tutorial/"
download.file(paste0(course.url,"Intro1.R"),destfile="Intro1.R",mode="w")
light <- c(20,20,20,20,21,24,44,60,90,94,101)
rmax <- c(1.73,1.65,2.02,1.89,2.61,1.36,2.37,2.08,2.69,2.32,3.67)

plot(light, rmax)
fit <- lm(rmax~light)
summary(fit)
abline(fit)

download.file(paste0(course.url,"Intro2.R"),destfile="Intro2.R",mode="w")
download.file(paste0(course.url,"ChlorellaGrowth.csv"),destfile="ChlorellaGrowth.csv",mode="w")

X <- read.csv('ChlorellaGrowth.csv',comment.char='#')
# using '#' as a comment character allows us the CSV file to be self-documenting
light <- c(20,20,20,20,21,24,44,60,90,94,101)
rmax <- c(1.73,1.65,2.02,1.89,2.61,1.36,2.37,2.08,2.69,2.32,3.67)
LogLight=log(light)
par(mfcol=c(1,1))
par(cex=1.5,cex.main=0.9)
plot(rmax~LogLight,data=X,xlab="Log light intensity (uE/m2/s)",ylab="Maximum growth rate rmax (1/d)",pch=16)
# xlab and ylab are x and y axis labels, pch is "plotting character"
# cex is 'character expansion' - cex=1.5 increases symbol & label sizes by 50%
# cex.main sets the character expansion for the main title of the plot 

title(main="Data from Fussmann et al. (2000) system")
fit <- lm(rmax~LogLight)
summary(fit); abline(fit) 

# Next we get the regression equation to 'display itself' on the graph
c1 <- round(fit$coef[1],digits=3) 	# intercept	
c2 <- round(fit$coef[2],digits=3) 	# slope
text(50,3,paste("rmax=",c1,"+",c2,"LogLight")) 
"See file Algalgrowth.R for entire working code, except for equation seen superimposed 
over graph in original."
#########################################################################################
"11.0.0.0.2 Exercise"
course.url <- "http://kingaa.github.io/R_Tutorial/"
download.file(paste0(course.url,"Intro2.R"),destfile="Intro2.R",mode="w")
plot(fit)
?plot.lm
#########################################################################################
"11.0.0.0.3 Exercise: Create a plot of growth rate versus light intensity with 
the xx-axis running from 0 to 120, and the yy-axis running from 1 to 4."
light <- c(20,20,20,20,21,24,44,60,90,94,101)
rmax <- c(1.73,1.65,2.02,1.89,2.61,1.36,2.37,2.08,2.69,2.32,3.67)
plot(rmax,light,xlim=c(0,120),ylim=c(1,4))
#########################################################################################
"11.0.0.0.4 Exercise"
X <- read.csv('ChlorellaGrowth.csv',comment.char='#')
# using '#' as a comment character allows us the CSV file to be self-documenting
light <- c(20,20,20,20,21,24,44,60,90,94,101)
rmax <- c(1.73,1.65,2.02,1.89,2.61,1.36,2.37,2.08,2.69,2.32,3.67)
par(cex=1.5,cex.main=0.9)
par(mfcol=c(2,1))
plot(rmax~light,data=X,xlab="light intensity (uE/m2/s)",ylab="maximum growth rate (1/d)",pch=16) 
# xlab and ylab are x and y axis labels, pch is "plotting character"
# cex is 'character expansion' - cex=1.5 increases symbol & label sizes by 50%
# cex.main sets the character expansion for the main title of the plot 

title(main="Data from Fussmann et al. (2000) system")
fit <- lm(rmax~light)
summary(fit); abline(fit) 

# Next we get the regression equation to 'display itself' on the graph
c1 <- round(fit$coef[1],digits=3) 	# intercept	
c2 <- round(fit$coef[2],digits=3) 	# slope
text(50,3,paste("rmax=",c1,"+",c2,"light")) 

# You can use ?round, ?text and ?paste to read about these commands
# for working with plots  
LogLight<-(log(light))
Logrmax <- (log(rmax))
plot(Logrmax~LogLight,main="Data from Fussmann et al. (2000) system", xlab="Log of Light Intensity (uE/m2/s)", ylab="Log of Max Growth Rate (1/d)", pch=16)
fit <- lm(Logrmax~LogLight)
summary(fit); abline(fit) 
"Part 2"
X <- read.csv('ChlorellaGrowth.csv',comment.char='#')
# using '#' as a comment character allows us the CSV file to be self-documenting
light <- c(20,20,20,20,21,24,44,60,90,94,101)
rmax <- c(1.73,1.65,2.02,1.89,2.61,1.36,2.37,2.08,2.69,2.32,3.67)
par(cex=1.5,cex.main=0.9)
par(mfcol=c(1,2))
plot(rmax~light,data=X,xlab="light intensity (uE/m2/s)",ylab="maximum growth rate (1/d)",pch=16)
# xlab and ylab are x and y axis labels, pch is "plotting character"
# cex is 'character expansion' - cex=1.5 increases symbol & label sizes by 50%
# cex.main sets the character expansion for the main title of the plot

title(main="Data from Fussmann et al. (2000) system")
fit <- lm(rmax~light)
summary(fit); abline(fit)

# Next we get the regression equation to 'display itself' on the graph
c1 <- round(fit$coef[1],digits=3) 	# intercept
c2 <- round(fit$coef[2],digits=3) 	# slope
text(50,3,paste("rmax=",c1,"+",c2,"light"))

# You can use ?round, ?text and ?paste to read about these commands
# for working with plots
LogLight<-(log(light))
Logrmax <- (log(rmax))
plot(Logrmax~LogLight,main="Data from Fussmann et al. (2000) system", xlab="Log of Light Intensity (uE/m2/s)", ylab="Log of Max Growth Rate (1/d)", pch=16)
fit <- lm(Logrmax~LogLight)
summary(fit); abline(fit)
"All this code can be seen in the Copy2.R file"
#########################################################################################
"11.0.0.0.5 Exercise"
?par
par(mfcol=c(2,2))
x<-3:8
plot(y=5*x+3)
#########################################################################################
"11.0.0.0.6 Exercise"
dev.print()
#########################################################################################
"Section 12"
#########################################################################################
"12.1.0.0.2 Exercise"
a <- 1.1
b <- 0.001
T <- seq(from=1,to=200,by=1)
N <- numeric(length(T))
n <- 2
for (t in T) {
  n <- a*n/(1+b*n)
  N[t] <- n
}
plot(T,N)
"When T vector has legnth of 1, only one point can be plotted. With length of 0,
not points are plotted."
#########################################################################################
"12.2.0.0.1 Exercise"
phi <- 20
k <- 1
while (k <= 100) {
  phi <- 1+1/phi
  print(c(k,phi))
  k <- k+1
}
#
phi <- 20
conv <- FALSE
while (!conv) {
  phi.new <- 1+1/phi
  conv <- phi==phi.new
  phi <- phi.new
}
#########################################################################################
"12.2.0.0.2 Exercise"
