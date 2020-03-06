%% Pedro Bastos
% Probabilistic Methods 
% Markov chains

%% a)

TransitionMatrix = [0.7 0.8; 0.3 0.2];

%x(k + 1) = TransitionMatrix(k)
x0 = [1; 0];
%x(2) = TransitionMatrix(1) = TransitionMatrix(TransitionMatrix(x0)) =
%TransitionMatrix(2) * x0

x2 = TransitionMatrix * TransitionMatrix * x0;
fprintf("alinea a)\n");
fprintf("prob de não faltar: %f \n", x2(1));
fprintf("prob de faltar: %f \n\n", x2(2));


%% b)
x0b = [0; 1];
x2b = TransitionMatrix * TransitionMatrix * x0b;
fprintf("alinea b)\n");
fprintf("prob de não faltar: %f \n", x2b(1));
fprintf("prob de faltar: %f \n\n", x2b(2));


%% c)
x0c = [0; 1];
% número de aulas = 15 * 2
x29 = TransitionMatrix^29 * x0c;
fprintf("alinea c)\n");
fprintf("prob de não faltar: %f \n", x29(1));
fprintf("prob de faltar: %f \n\n", x29(2));


%% d)
p = zeros(1, 30);
x0d = [0.85; 0.15];

for k = 1: 30
    xd = (TransitionMatrix^(k-1) * x0d);
    p(k) = xd(2);
end

xlabel('número de aula');
ylabel('probabilidade de faltar à próxima aula');
plot(p);

