"R Assignments for QBC 2017"
#########################################################################################
"9.1.0.0.1 Exercise: What do the %% and %/% operators do?"

x <- c(2,0.5,13,22.75)
y<- 2


"&	logical AND, elementwise &&	logical AND, first element only"
#########################################################################################
"9.1.1.0.1 Exercise: What happens when the length of the longer vector is not a 
multiple of that of the shorter?"

a<- c(2,7,11.6,21,54)
b<- c(10,20,30,40,50,60,70,80,90)
a+b
"You get a warning message: In a+b:longer object length is not a multiple of object length"
#########################################################################################
"9.1.2.0.1 Exercise: Use seq to create the vector v=(1 5 9 13), and 
to create a vector going from 1 to 5 in increments of 0.2 ."
x <- seq(1,13, by=4)
print(x)
y<- seq(1,5, by=0.2)
print(y)
#########################################################################################
"9.1.2.0.2 Exercise: What happens when to is less than from in seq? 
What result does 3:1 give? This is one of the first “gotchas” R newbies run into."
c <- seq(3:1)
print(c)
"Result: you get vector [1 2 3]"
#########################################################################################
"9.1.3.0.1 Exercise: If you enter v <- z[seq(1,5,2)], what will happen? 
Make sure you understand why."
z <- c(1,3,5,7,9,11)
v<-z[seq(1,5,2)]
print(v)
[1] 1 5 9 
"This is because you are taking a sequence of the numerical values in vector z between 
the 1st numerical value and the 5th, with an interval of 2. So the first numerical 
value in vector z is 1, you skip to the 3rd numerical value, 5, because of your interval
of 2, and then to the 5th numerical value, 9, where the sequence ends."
#########################################################################################
"9.1.3.0.2 Exercise: Write a one-line command to extract 
a vector consisting of the second, first, and third elements of z in that order." 
print(z[c(2,1,3)])
#########################################################################################
"9.1.3.0.3 Exercise: What happens when I set the value of an element that doesn’t exist?
For example, try"
z[9] <- 11
print(z)
[1]  1  3  5  7  9 11 NA NA 11
"It places the value of 11 at the 9th place in vector z, filling in the gaps with NA
since there is no value designated for the 7th and 8th places within vector z."
#########################################################################################
"9.1.3.0.4 Exercise: Write code that computes values of y=(x−1)(x+1)y=(x−1)(x+1) 
for x=1,2,⋯,10x=1,2,⋯,10, and plots yy versus xx with the points plotted and 
connected by a line."
x <- seq(1:10)
y <- ((x-1)/(x+1))
plot(y,x)
#########################################################################################
"9.1.3.0.6 Exercise"
n <- 0:10 ; G <- 05e-n
print(G)
#########################################################################################
"9.1.5.0.1 Exercise"
Light <- c(20,20,20,20,21,24,44,60,90,94,101)
rmax <- c(1.73,1.65,2.02,1.89,2.61,1.36,2.37,2.08,2.69,2.32,3.67)
lowLight <- Light[Light<50]
lowLightrmax <- rmax[Light<50]
lowLight
lowLightrmax
Light <- Light[Light<50]
Light
"This redefines Light, so now the only variables in the Light vector are those less
than 50, which permanently removes 4 variables from the data."
#########################################################################################
"9.1.5.0.2 Exercise" 
f <- runif(20)
g <- f[f<mean(f)]
g
#########################################################################################
"9.1.5.0.3 Exercise: Find the positions of the elements that are less than the mean 
of the vector you just created (e.g. if your vector were (0.1 0.9 0.7 0.3) the answer 
would be (1 4))."
#########################################################################################
"9.1.5.0.4 Exercise: Specify two ways to take only the elements in the odd positions 
(first, third, …) of a vector of arbitrary length."
x <- runif(11)
x[1,3,5,7,9,11]
x[-2:-10]
#########################################################################################
