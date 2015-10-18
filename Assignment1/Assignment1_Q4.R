# Assignment1 Q4
# Due: 4pm Thursday, 29/10/15

#setwd("~/Studies/Newcastle/MAS8401/R_Practicals/Assignment1")
rm (list=ls())

#
data = read.csv("A1Q4.csv", header=TRUE)
data

colors=c("grey", "white")
boxplot (Reduction~Drug+Hospital, data=data, col = colors, las = 2, main="Diastolic Blood pressures reduction", 
         ylab="Reduction of hypertension")
legend("topleft", c("Drug", "Placebo"), fill=colors, horiz=TRUE)
