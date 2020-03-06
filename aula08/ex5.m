%% Pedro Bastos
% Probabilistic Methods 
% Markov chains

%% a)
fprintf("Alinea a) \n");
TransitionMatrix = [0.7 0.2 0.1; 0.2 0.3 0.5; 0.3 0.3 0.4];
disp(TransitionMatrix);


%% b)
x0 = [1; 0; 0];
x2 = TransitionMatrix ^ 2 * x0;
fprintf("Alinea b) \n");
fprintf("    %f\n\n", x2(3));


%% c)
SS = zeros(1, 20);
SN = zeros(1, 20);
SC = zeros(1, 20);

NS = zeros(1, 20);
NN = zeros(1, 20);
NC = zeros(1, 20);

CS = zeros(1, 20);
CN = zeros(1, 20);
pCC = zeros(1, 20);

hold on;

for k = 1: 20
    t = TransitionMatrix;
    SS = t(1, 1);
    SN = t(1, 2);
    SC = t(1, 3);

    NS = t(2, 1);
    NN = t(2, 2);
    NC = t(2, 3);

    CS = t(3, 1);
    CN = zeros(3, 2);
    pCC = zeros(3, 3);
end

matrix = [];
for k = 1 : 20
    TransitionMatrixN = TransitionMatrix ^ k;
    matrix = [matrix TransitionMatrixN(:)];
end

plot(matrix);