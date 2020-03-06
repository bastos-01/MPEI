clear all;
close all;
clc;
p = 0.5;
k=2;
n=3;
prob = factorial(n)/(factorial(n-k)*factorial(k))*p^k*(1-p)^(n-k);
experiencias = rand(3,10000);
lancamentos = experiencias > 0.5;
resultado = sum(lancamentos);
sucessos = resultado == 2;
probSimulacao = sum (sucessos)/10000;



