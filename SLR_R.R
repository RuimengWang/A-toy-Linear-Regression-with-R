> x=c(1,2,3,4,5,6,7,8)
> y=c(2.1,4.23,6.08,8.21,10.09,11.55,13.64,16.0001)
> average_x=mean(x)
> average_y=mean(y)
> beta1=cor(x,y)*sd(y)/sd(x)
> beta0=average_y-beta1*average_x
> beta1
[1] 1.936199
> beta0
[1] 0.2746179
> lm(y~x)

Call:
  lm(formula = y ~ x)

Coefficients:
  (Intercept)            x  
0.2746       1.9362  

> ###Here let us calculate the R^2####
> n=length(x)
> SSR=var(beta0+beta1*x)*(n-1)
> SST=var(y)*(n-1)
> R-square=SSR/SST
Error in R - square = SSR/SST : object 'R' not found
> R_square=SSR/SST
> R_Square
[1] 1
> summary(lm(y~x))

Call:
  lm(formula = y ~ x)

Residuals:
  Min       1Q   Median       3Q      Max 
-0.34181 -0.13011  0.03989  0.14844  0.23589 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)    
(Intercept)  0.27462    0.16874   1.627    0.155    
x            1.93620    0.03342  57.943 1.78e-09 ***
  ---
  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1

Residual standard error: 0.2166 on 6 degrees of freedom
Multiple R-squared:  0.9982,	Adjusted R-squared:  0.9979 
F-statistic:  3357 on 1 and 6 DF,  p-value: 1.775e-09