library(mvtnorm)
library(MASS)     # Is that the right name?!
set.seed(5)
sigma <-matrix(c(4,2,2,3), ncol=2)
x<-rmvnorm(n=500, mean=c(1,2), sigma=sigma, method="chol")
z<-kde2d(x[,1],x[,2],n=200)
par(mar=rep(0,4))
persp(z,theta=60,phi=15,col=heat.colors(199,alpha=1), shade=0.4,border=NA,box=FALSE)
