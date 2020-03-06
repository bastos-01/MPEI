%% Pedro Bastos
% Probabilistic Methods 
% Markov chains

%% a)

TransitionMatrix = [1/3 1/4 0; 1/3 11/20 1/2; 1/3 1/5 1/2];

sum(TransitionMatrix); %a matriz estocástica

%% b)

%90 alunos

x0 = [60; 15; 15];

%% c)

x30 = TransitionMatrix^29 * x0;
%%elem = x30 .* 90;

fprintf("alinea c)\n");
fprintf("%f\n",x30(1));
fprintf("%f\n",x30(2));
fprintf("%f\n\n",x30(3));


%% d)
x0d = [30; 30; 30];
x30d = TransitionMatrix^29 * x0d;
%%elemd = x30 .* 90;

fprintf("alinea d)\n");
fprintf("%f\n",x30d(1));
fprintf("%f\n",x30d(2));
fprintf("%f\n\n",x30d(3));
