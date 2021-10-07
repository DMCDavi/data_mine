require(rpart)
t=rpart(formula=Mileage~Price+Country+Reliability+Type,data=cu.summary,method="anova")
plot(t,uniform=T)
text(t,user.n=T)