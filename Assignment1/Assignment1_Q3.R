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
n = length (mydata)
x_bar = (1/n)*sum(mydata)
x_bar
# or simple 
mean (mydata)

### variance: s2= (1/(n-1))*(sum(mydata**2)-n*x_bar^2)
print ("Sample variance")
s2 = (1/(n-1))*(sum(mydata**2)-n*x_bar^2)
s2
# or simple
var (mydata)

### standard deviation s = sqrt (s2)
print ("Standard deviation")
sqrt (s2)
# or 
s2**(1/2.0)
# or 
sd (mydata)

### Five number summary
print ("Five number summary")
quantile (mydata, type=6)

### Basic Histogram of the mydata
print ("Simple histograms")
x_min = as.integer (min (mydata)-5)
x_max = as.integer (max (mydata)+5)

hist (mydata, freq=TRUE, xlim = c(x_min,x_max),col = "cadetblue3", main = "Simple Histogram ", xlab="X values")

# or do not use frequency
hist (mydata, freq=FALSE, xlim = c(x_min,x_max),col = "cadetblue3", main = "Simple Histogram ", xlab="X values")
