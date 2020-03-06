%% Pedro Bastos
% Probabilistic Methods 
% Markov chains

states = 20;
r = rand(states);
TransitionMatrix = r./sum(r);
x0 = [1; zeros(states - 1, 1)];


%% 20 
x20 = TransitionMatrix ^ 20 * x0;
fprintf('20 transitions\n');
fprintf("%.5f\n", x20(states));
fprintf("-----------------------\n\n");


%% 40 
x40 = TransitionMatrix ^ 40 * x0;
fprintf('40 transitions\n');
fprintf("%.5f\n", x40(states));
fprintf("-----------------------\n\n");


%% 100
x100 = TransitionMatrix ^ 100 * x0;
fprintf('100 transitions\n');
fprintf("%.5f\n", x100(states));
