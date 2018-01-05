> x=c(1,2,3,4,5,6,7,8)
> y=c(2.1,4.23,6.08,8.21,10.09,11.55,13.64,16.0001)
###Here we assign the dataset of x and y. 
> average_x=mean(x)
> average_y=mean(y)
###Here we calculate the average
> beta1=cor(x,y)*sd(y)/sd(x)
> beta0=average_y-beta1*average_x
###Here we calculate the amount of the two beta
> beta0
[1] 0.2746179
> beta1
[1] 1.936199
> lm(y~x)

Call:
  lm(formula = y ~ x)

Coefficients:
  (Intercept)            x  
0.2746       1.9362

###Let us compare our results to the authentic results. It is correct! 
###You are victorious