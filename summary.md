---
title: "summary"
author: "Glenn Dunmire"
date: "Saturday, August 23, 2014"
output: html_document
---

**Introduction**

This is just a brief explainer for this application. Many tasks in life such as a mortgage or auto payment require a monthly payment based on interest and length of the loan. This application is meant to make it easier to automatically compute this payment. 

**Inputs** 

For this application the user must input the following: 

Loan = the total value of the loan

Down Payment = any down payment

Term = the term of the loan in months (years * 12). Must be in months

Interest = the APR or annual interest rate on the loan

**Calculations**

Behind the scenes the application will compute the monthly payment as follows: 

principal = loan - down payment

monthly interest = interest/12

payment <-  principal * ((monthlyInterest * (1 + monthlyInterest)^term ) / ((1 + monthlyInterest)^term - 1))

For reference see http://www.vertex42.com/ExcelArticles/amortization-calculation.html. There are many different ways to calculate this payment, I thought this was very straightforward. 

**Notes**

Obviously this does not allow one to switch from years to months automatically nor does it handle more complicated forms of interest or accelerated payments. This is a very basic calculator. 