> x1=c(0,11,11,7,4,10,5,8)
> x2=c(1,5,4,3,1,4,4,2)
> y=c(11,15,13,14,0,19,16,8)
> X=cbind(1,x1,x2)
> ###solve the beta###
  > solve(t(X)%*%X)%*%t(X)%*%y
[,1]
3.7
x1 -0.7
x2  4.4
> ###Using the embedded command of R###
  > lm(y~x1+x2)

Call:
  lm(formula = y ~ x1 + x2)

Coefficients:
  (Intercept)           x1           x2  
3.7         -0.7          4.4  

> summary(lm(y~x1+x2))

Call:
  lm(formula = y ~ x1 + x2)

Residuals:
  1    2    3    4    5    6    7    8 
2.9 -3.0 -0.6  2.0 -5.3  4.7 -1.8  1.1 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)  
(Intercept)   3.7000     3.2995   1.121   0.3131  
x1           -0.7000     0.6181  -1.133   0.3088  
x2            4.4000     1.5758   2.792   0.0383 *
  ---
  Signif. codes:  0 ¡®***¡¯ 0.001 ¡®**¡¯ 0.01 ¡®*¡¯ 0.05 ¡®.¡¯ 0.1 ¡® ¡¯ 1

Residual standard error: 3.909 on 5 degrees of freedom
Multiple R-squared:  0.6817,	Adjusted R-squared:  0.5543 
F-statistic: 5.353 on 2 and 5 DF,  p-value: 0.05717