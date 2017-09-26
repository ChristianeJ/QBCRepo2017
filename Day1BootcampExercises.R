##Problem 1 
for (ii in 1:9){
  if (ii<9)
    cat("\n        ")
  else if (ii == 9)
    cat("\n*")
}
##Problem 2 
for (ii in 1:9){
  if (ii<10)
    cat("*&")
  if (ii == 9)
    cat("*")
}
##Problem 3
dogs <- 10;
for (i in 1:5){
  dogs <- dogs + 1; 
}
###dogs variable just becomes 11 
meatloaf <- 0; 
for (i in 5:9){
  meatloaf <- meatloaf - i + 1;
  cat(meatloaf) 
}
###Values should print as -4, -9,-15,-22 up to the final, -30 
bubbles <- 12;
for (i in -1:-4){
  bubbles <- i;
}
###Bubbles is just rewritten with the value of i, so -1, -2, -3, -4 

##Problem 4 
years <- c( 2015, 2016, 2018, 2020, 2021)
for(ii in 1:length(years)){
  if(years[ii] %% 2 == 0){
    cat(years[ii], 'Hooray, congressional elections!', sep = '\t', fill = T)
  }
  if(years[ii] %% 4 == 0){
    cat(years[ii], 'Good god, the presidential elections again.', sep = '\t', fill = T)
  }
}

##Problem 5
bankAccounts <- c(10, 9.2, 5.6, 3.7, 8.8, 0.5);
#Now look at the error message the following lines of code produce. Can you think of a way to modify this loop so that the loop will compund the interest?
interestRate <- 0.0125;
i <- (1:length(bankAccounts))
compounded <- interestRate*bankAccounts + bankAccounts
for (i in 1:length(bankAccounts)) {
  cat("\n",compounded[i])}
#HINT: variables must be initialized before you can perform operations on them
#HINT 2: look at the rep() function and see if you can use that to initialize a variable that will help you.
#Maybe rep_len(x, length.out)?

##Problem 6 
bankAccounts <- c(10, 9.2, 5.6); #define bank accounts here
interestRate <- 0.0525;   
house <- c(4.8, 3.8, 5.7); #deduct
food<- c(3.5, 4.3, 5.0);    #deduct
fun <- c(7.8, 2.1, 10.5);  #deduct
#and incomes (through TAships) of 
income <- c(21, 21, 21); #add this
bankAccountsAdj <- bankAccounts - house - food - fun + income 
compounded <- matrix(nrow=3,ncol=6)
compounded[,1] <- bankAccountsAdj
for (j in 1:5) {
  for(i in 1:length(bankAccounts)) {
    compounded[i,j+1] <- (compounded[i,j]*interestRate+compounded[i,j])
  }
}

##Problem 7
bankAccounts <- c(10, 9.2, 5.6)
interestRate <- 0.0525
house <- c(4.8, 3.8, 5.7); 
food<- c(3.5, 4.3, 5.0); 
fun <- c(7.8, 2.1, 10.5); 
income <- c(21, 21, 21)
debts <- cbind(house - food - fun + income)
bankAccountsAdj <- (bankAccounts-house-food-fun+income)
year <- c("2015","2016","2017","2018","2019","2020")

compounded <- matrix(nrow=3,ncol=6, dimnames = list(bankAccountsAdj,year))


for (j in 1:6) {
  for(i in 1:length(bankAccountsAdj)) {
    if (j == 1) {
    compounded[,j] <- (bankAccountsAdj*interestRate+bankAccountsAdj)}
    if (j > 1) { 
      compounded[i,j] <- (compounded[i,j-1]*interestRate+compounded[i,j-1])
      compounded[i,j] - debts}
    if (j==1 | j == 6) {
      compounded[1,j] <- (compounded[1,j]+5000)
      compounded[3,j] <- (compounded[3,j]+5000) 
    }
   }
  } 
compounded
##Exercise 8) use a while loop to sum all numbers from 1:17. You will need to use a counter variable (like index seen in class).
x = 0 
j=1
  while (j < 18) {
      x = x+j 
      j = j+1}
x

##Exercise 9) write a function takes a number, and prints ‘small’ if number less than or equal to -1; ‘medium’ if between -1 and + 1’big’ if greater than or equal to + 1
NumberSize <- function(x){  
  if (x <= -1) {
  cat("Small\n")}
  if (-1 < x & x < 1) {
  cat("Medium\n")}
  if(x >= 1){
  cat("Big\n")
  }
}

NumberSize(-4)
NumberSize(.45)
NumberSize(6)