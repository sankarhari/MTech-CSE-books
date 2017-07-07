library('DAAG')
print(roller)
model=lm(depression~weight, data=roller)
print(summary(model))
#print("Actual values given in data set for depression")
#print(roller$depression)
#print("Fitted values for depression")
#print(model$fitted.values)
Actual_depression=roller$depression
Fitted_depression=model$fitted.values
Residuals<-model$residuals
df<-data.frame(roller$weight,Actual_depression,Fitted_depression,Residuals)
print(df)
a <- data.frame(weight = 15)
res=predict(model,a)
print("Predicted value for weight=15 is")
print(res)
par(mfrow=c(2,2))
plot(depression~weight,data=roller, main="With intercept")
abline(model)
points(model$fitted.values,col="green",cex=2)
 
model1=lm(depression~-1+weight, data=roller)
plot(depression~weight,data=roller, main="Without Intercept")
abline(model1)
points(model1$fitted.values,col="red",cex=2)


	roller1=roller[c(1:8),]
model2=lm(depression~weight, data=roller1)
model3=lm(depression~-1+weight, data=roller1)
plot(depression~weight,data=roller1, main="Without Intercept_roller1")
abline(model2)
points(model2$fitted.values,col="blue",cex=2)
plot(depression~weight,data=roller1, main="Without Intercept_roller1")
abline(model3)
points(model3$fitted.values,col="purple",cex=2)

