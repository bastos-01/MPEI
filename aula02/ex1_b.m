clear all;
close all;

n = 2;
k = 0;
p = 0.5;
probT = 1 - factorial(n)/ (factorial(n-k)*factorial(k)) * p^k*(1-p)^(n-k);

