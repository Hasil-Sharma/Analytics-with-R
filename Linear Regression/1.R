wine = read.csv("wine.csv")
model1 = lm(Price ~ AGST,data=wine)
summary(model1)
#Multiple R-squared always increase on adding new independent variable
#but Adjusted R-squared will decrease if a varibable is added that doesn't help
#the model
SSE = sum(model1$residuals^2)#Sum of squared errors
SSE
model2  = lm(Price ~ AGST+HarvestRain,data=wine)
summary(model2)
#Adjusted R squared increases hence harvestrain is good
SSE = sum(model2$residuals^2)
SSE
model3 = lm(Price ~ AGST + HarvestRain + WinterRain + Age + FrancePop,data=wine)
#using all the variables
summary(model3)
SSE = sum(model3$residuals^2)
SSE