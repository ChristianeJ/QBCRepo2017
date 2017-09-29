##### Plot Exercises Day 2 #####

setwd("~/Desktop/QBC2017")
snpsDataFrame=read.table('hapmap.txt',header=TRUE)
snps=as.matrix(snpsDataFrame)

head(snps) 

calc_freq=function(x){
  return(sum(x,na.rm=TRUE)/(2.0*sum(!is.na(x))))
}

calc_het=function(x){
  return(sum(x==1,na.rm=TRUE)/(sum(!is.na(x))))
}

freq=apply(snps,1,calc_freq)
het=apply(snps,1,calc_het)

plot(freq,het,xlab="Frequency",ylab="Heterozygosity")
p=seq(0,0.5,by=0.05)   # Set-up a vector with a sequence of allele frequencies
points(p,2*p*(1-p),type="l",col=2)

compute_chisquare=function(x){
  freq=sum(x,na.rm=TRUE)/(2.0*sum(!is.na(x)))
  cnt0=sum(x==0,na.rm=TRUE)
  cnt1=sum(x==1,na.rm=TRUE)
  cnt2=sum(x==2,na.rm=TRUE)
  obscnts=c(cnt0,cnt1,cnt2)
  #print(obscnts)
  n=sum(obscnts)
  expcnts=c((1-freq)^2,2*freq*(1-freq),freq^2)*n
  chisq=sum((obscnts-expcnts)^2/expcnts)
  return(chisq)
}

compute_chisquare_2=function(x){
  freq=sum(x,na.rm=TRUE)/(2.0*sum(!is.na(x)))
  cnt0=sum(x==0,na.rm=TRUE)
  cnt1=sum(x==1,na.rm=TRUE)
  cnt2=sum(x==2,na.rm=TRUE)
  obscnts=c(cnt0,cnt1,cnt2)
  #print(obscnts)
  n=sum(obscnts)
  #here we use the built-in function for the chi-sq distribution:
  exp_probs=c((1-freq)^2,2*freq*(1-freq),freq^2) #note, here we don't multiply by n
  chisq<-chisq.test(obscnts,p=exp_probs, correct = FALSE)$statistic
  return(chisq)
}


### Question 1
# (a)
chi2<-apply(snps,1,compute_chisquare)
pvals<- pchisq(chi2,1,lower.tail = TRUE)
pvals
# (b)
calc_freq(pvals<0.05)
calc_freq(pvals<0.01)
calc_freq(pvals<0.001)
#Yes
# (c)
num_pvals <- length(pvals)
num_pvals
# (d)
exp_pvals <- ((1:4014)/num_pvals)
exp_pvals
# (e)
sort_pvals <- sort(pvals)
#(f)
log_sort_pvals <- (-log10(sort_pvals))
log_exp_pvals <- (-log10(exp_pvals))
#(g)
plot(log_sort_pvals,log_exp_pvals, xlab="-log10(expected P-value)", ylab = "-log10(observed P-value)")
#(h)
abline(0,1, col="red")




### Question 2
# (a) 
zz <- read.table("pheno.sim.2014-2.txt", header=TRUE)
# (b+c) 
quantile(zz$glucose_mmolperL)
#25% = 4.768756 and 75% = 7.354975
# (d)
plot(density(zz$glucose_mmolperL),col="orange", main="Phenotype")
abline(v=quantile(zz$glucose_mmolperL,.25),col="blue")
abline(v=quantile(zz$glucose_mmolperL,.75),col="green")



