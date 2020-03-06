%% Pedro Bastos
% Probabilistic Methods 
% Markov chains

%% a)
fprintf("Alinea a) \n");
transitionMatrix = [0.8 0.1 0.05 ;0.2 0.6 0.2; 0 0.3 0.75];

x0 = [100; 200; 30];
t = sum(x0);
%%x0 = x0./t;

x4 = (transitionMatrix ^ 4 * x0);
fprintf("Ana: %f\n", x4(1));
fprintf("Bernardo: %f\n", x4(2));
fprintf("Catarina: %f\n\n", x4(3));


%% b)
fprintf("Alinea b) \n");
x365 = (transitionMatrix ^ 365 * x0);
fprintf("Ana: %f\n", x365(1));
fprintf("Bernardo: %f\n", x365(2));
fprintf("Catarina: %f\n", x365(3));


%% c)
dia = 1;
while true
    dinheiro = transitionMatrix^dia * x0;
    if dinheiro(3) > 130
        break
    end
    dia = dia + 1;
end
disp(dia);