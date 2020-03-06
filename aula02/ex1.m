close all;
clear all;

aleatorio = rand(2,1000) > 0.5;

resultados = sum(aleatorio) >= 1;

prob = sum(resultados)/1000;