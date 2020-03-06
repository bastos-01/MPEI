%% Pedro Bastos
% Probabilistic Methods 
% Markov chains

%% a)
fprintf("Alinea a) \n");
TransitionMatrix = [(0.4 ^ 2) 0 0 (0.6 ^ 2); ((1 - 0.4) ^ 2) 0 0 (0.6 * (1 - 0.6)); (0.4 * (1 - 0.4)) 0 0 (0.6 * (1 - 0.6)); (0.4 * (1 - 0.4)) 1 1 ((1 - 0.6) ^ 2)];
disp(TransitionMatrix);


%% b)
x0 = [1; 0; 0; 0];
x10 = TransitionMatrix ^ 10 * x0;
fprintf("Alinea b) \n");
fprintf("    %f\n", x10(2));


