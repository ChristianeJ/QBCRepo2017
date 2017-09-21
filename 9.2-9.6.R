#########################################################################################
"9.2.1.0.1 Exercise: Use a command of the form X <- matrix(v,nrow=2,ncol=4) where v 
is a data vector." 
v <- rep(1:2, 4)
print(v)
x <- matrix(v,nrow=2,ncol=4)
print(x)
#########################################################################################
"9.2.1.0.2 Exercise"
y <- rnorm(35, mean=1, sd=2)
print(y)
b <- matrix(y,nrow=5,ncol=7)
print(b)
#########################################################################################
"9.2.2.0.1 Exercise"
C <- cbind(1:3,4:6,5:7)
C
D <- rbind(1:3,4:6)
D
rbind(C,D)
cbind(C,C)
cbind(C,D)
"cbind of C and D doesn't work because the number of rows does not match between C and D"
#########################################################################################
"9.3"
#########################################################################################
"9.3.0.0.1 Exercise"
x <- seq(1,27)
dim(x) <- c(3,9)
is.array(x)
is.matrix(x)
print(x)
"Is both a 3x9 matrix and a one-dimensional array"
#########################################################################################
"9.6"
#########################################################################################
"9.6.0.0.1 Exercise"
data.url <- "http://kingaa.github.io/R_Tutorial/ChlorellaGrowth.csv"
dat <- read.csv(data.url,comment.char='#')
dat
str(dat)
"11 observations of 2 variables, the 2 variables being light and rmax"