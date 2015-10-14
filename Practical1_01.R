setwd("~/Studies/Newcastle/MAS8401/R_Practicals/MAS8401")

sum (seq (1, 3001, by=3))


x=c(1,7,13,14,20)
med=sum(x)/length(x)
s2=(sum(x^2)-length(x)*mean(x)^2)/(length(x)-1)

url <- "http://www.mas.ncl.ac.uk/~ndah6/teaching/MAS8401/atp.txt"
ATP.data <- read.table(url, header=TRUE)