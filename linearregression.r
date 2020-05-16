data <- read.csv("dataset.csv")

head(data)
tail(data)
colnames(data)



summary(data)
str(data)

library(plyr)
hasil<- count(data)



cor(data$Biaya.Promosi, data$Volume.Penjualan)


linearMod <- lm(data$Volume.Penjualan ~ data$Biaya.Promosi, data=data)
linearMod

plot(data,pch=16, col="red")
abline(linearMod)
