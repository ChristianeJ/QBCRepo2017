#"Plot Exercises Day 1" 

## Exercise 1 
#mean = 69 sd = 10 

for (cc in 1:1000) {
  if (cc == 1) {
  get_heights <- rnorm(1000, mean=69, sd=10)
  heights_100 <- sample(get_heights, 100)
  mean_heights_100 <- mean(heights_100)}
  if (cc > 1) {
  get_heights <- rnorm(1000, mean=69, sd=10)
  heights_100 <- sample(get_heights, 100)
  mean_heights_100<-rbind(mean_heights_100,mean(heights_100))}
}

#
for (cc in 1:1000) {
  if (cc == 1) {
    get_heights <- rnorm(1000, mean=69, sd=10)
    heights_100 <- sample(get_heights, 1000)
    mean_heights_1000<- mean(heights_100)}
  if (cc > 1) {
    get_heights <- rnorm(1000, mean=69, sd=10)
    heights_100 <- sample(get_heights, 1000)
    mean_heights_1000<-rbind(mean_heights_1000,mean(heights_100))}
}
head(mean_heights_100)
head(mean_heights_1000)
max(mean_heights_1000)
min(mean_heights_1000)
hist(mean_heights_1000)
bins<-seq(64,74,by=1)
hist(mean_heights_100,breaks=bins)$breaks
hist(mean_heights_1000,breaks=bins)$breaks
counts_100<-hist(mean_heights_100,breaks=bins)$counts
counts_1000<-hist(mean_heights_1000,breaks=bins)$counts
par(mfrow=c(1,1), mar=c(5, 4, 3, 2))
barplot(rbind(counts_100,counts_1000),col=c(2,4),beside=T,xlab="Average Height (inches)",ylab="Count",names.arg=seq(65,74,by=1), ylim=c(0,600))
legend(2,600,c("n=100","n=1000"),col=c(2,4), pch = 19)



