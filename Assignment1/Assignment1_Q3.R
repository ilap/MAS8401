# Assignment1 Q3 
# Due: 4pm Thursday, 29/10/15
# setwd("~/Studies/Newcastle/MAS8401/R_Practicals/Assignment1")
rm (list=ls())

mydatanumber = 18
data = read.table( "A1Q3.dat")
mydata = data[,mydatanumber]
mydata 

### mean = (1/n)*sum(mydata)
print ("Sample mean")
#n = length (mydata)
# x_bar = (1/n)*sum(mydata)
# x_bar
# or simple 
mean (mydata)

### variance: s2= (1/(n-1))*(sum(mydata**2)-n*x_bar^2)
print ("Sample variance")
# s2 = (1/(n-1))*(sum(mydata**2)-n*x_bar^2) os simple
s2 = var (mydata)
s2

### standard deviation s = sqrt (s2)
print ("Standard deviation")
# or  s2**(1/2.0) or sqrt (s2) see above
sd (mydata)

### Five number summary
print ("Five number summary")
quantile (mydata, type=6)

### Basic Histogram of the mydata
print ("Simple histograms")
x_min = as.integer (min (mydata)-3)
x_max = as.integer (max (mydata)+5)
# or do not use frequency
# hist (mydata, freq=FALSE, breaks=20, xlim = c(x_min,x_max),col = "cadetblue3", main = "Simple Histogram ", xlab="X values")
# or use frequency as default
hist (mydata, breaks=20, xlim = c(x_min,x_max), col = "cadetblue3", main = "Simple Histogram ", xlab="X values")