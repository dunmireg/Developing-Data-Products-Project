Shiny Monthly Payment Calculator
========================================================
author: Glenn Dunmire
date: August 24, 2014

Background and Motivation
========================================================

It is extremely common to estimate a montly payment based on a principal and interest rate. 

Examples include 

- mortgage
- car payment
- credit card debt
- student loans

Wouldn't it make sense to have an easy calculator to estimate your monthly payment?

How We actually calculate it
========================================================

The formula for a simple montly payment is actually pretty straightforward. The source for this is here: http://www.vertex42.com/ExcelArticles/amortization-calculation.html although there are alternative ways to formulate it. Basically the formula depends on 

- the principal (minus any down payments)
- monthly interest
- term (expressed in months)

Note: For the purpose of this application the term is restricted to months, this can be changed in future applications

The Formula
===================================================


- Monthly Interest (APR/12) = i

- Term (in months) = t

Payment = 

$Principal * (\frac{(i * (1 + i)^t)} {((1 + i)^t - 1)})$




Example
==================================================

So for example if we had an auto loan with: 

- Principal of $15,000

- Down Payment of $2,000

- APR of 5% (annual interest)

- Term of 5 years 


```r
monInt <- 0.05/12
term <- 5 * 12
payment <- (15000-2000) * ((monInt * (1 + monInt)^term)/((1 + monInt)^term - 1))
payment
```

```
[1] 245.3
```


Notes and Further Directions
==================================================

So this application obviously has a few restrictions. The user needs to do math to get the interest and term correct (these are labeled in the application). 

This also only works for one formula, it does not allow for different forms of interest or a variable rate or adding extra payments. 

There are many future applications that could add complexity and options to this payment calculator, which may be interesting to explore. 