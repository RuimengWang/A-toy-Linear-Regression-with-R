###Here we calculate the CI
> x=c(1,2,3,4,5,6)
> y=c(2.2,4.1,6.008,7.55,9.0,12.11)
> lm(y~x)

Call:
  lm(formula = y ~ x)

Coefficients:
  (Intercept)            x  
0.2488       1.8798  

> fit=lm(y~x)
> confint(fit,level=0.95)
2.5 %   97.5 %
  (Intercept) -0.931575 1.429175
x            1.576679 2.182864
> confint(fit,level=0.99)
0.5 %  99.5 %
  (Intercept) -1.708580 2.20618
x            1.377163 2.38238
> confint(fit,level=0.90)
5 %     95 %
  (Intercept) -0.6575311 1.155131
x            1.6470471 2.112496