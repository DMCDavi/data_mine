install.packages("e1071")
library(e1071)
bd=read.csv(file.choose(), header=T,sep=",")
c = naiveBayes(formula=jogartenis ~ ., data=bd)
nbd=read.csv(file.choose(), header=T,sep=",")
p=predict(c,nbd)
p