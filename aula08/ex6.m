%% Pedro Bastos
% Probabilistic Methods 
% Markov chains

%% a)
TransitionMatrix = [0.8 0.2 0 0; 0 0.9 0.1 0; 0.3 0.2 0.4 0.1; 0 0 0 1]';


%% b)
fprintf("Alinea b) \n");
x0 = [1 0 0 0]';
x1000 = TransitionMatrix ^ 1000 * x0;
disp(x1000);


%% c)
fprintf("Alinea c) \n");
mat1 = TransitionMatrix * x0;
mat2 = TransitionMatrix ^ 2 * x0;
mat10 = TransitionMatrix ^ 10 * x0;
mat100 = TransitionMatrix ^ 100 * x0;
disp(mat1);
disp(mat2);
disp(mat10);
disp(mat100);


%% d)
fprintf("Alinea d) matriz na forma canónica \n");
Q = TransitionMatrix(1:3,1:3);
disp(Q);


%% e)
fprintf("Alinea e) \n");
Fund = inv(eye(size(Q)) - Q);
disp(Fund);


%% f)
fprintf("Alinea f) \n");
F1 = Fund(:, 1);
F2 = Fund(:, 2);
F3 = Fund(:, 3);
disp(F1);
disp(F2);
disp(F3);


%% g)
fprintf("Alinea g) \n");
x = sum(Fund);
x1 = x(:, 1);
x2 = x(:, 2);
x3 = x(:, 3);
disp(x1);
disp(x2);
disp(x3);