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