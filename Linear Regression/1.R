wine = read.csv("wine.csv")
model1 = lm(Price ~ AGST,data=wine)
#Multiple R-squared always increase on adding new independent variable
#but Adjusted R-squared will decrease if a varibable is added that doesn't help
#the model
SSE = sum(model1$residuals^2)#Sum of squared errors
model2  = lm(Price ~ AGST+HarvestRain,data=wine)
#Adjusted R squared increases hence harvestrain is good
SSE = sum(model2$residuals^2)
model3 = lm(Price ~ AGST + HarvestRain + WinterRain + Age + FrancePop,data=wine)
#using all the variables
SSE = sum(model3$residuals^2)