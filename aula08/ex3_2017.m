T = [0.7 0.2 0 0 0 0;
    0.2 0 0.3 0 0 0;
    0 0.6 0.3 0 0 0;
    0.1 0.2 0.3 0.1 0 0;
    0 0 0 0.4 1 0;
    0 0 0.1 0.5 0 1];

x = [1 0 0 0 0 0]';

x10 = T^10 * x;

x15 = T^15 * x;

fprintf("prob de o decimo caracter ser 'c': %.4f\n", x10(3));
fprintf("prob de o decimo quinto caracter ser 'd': %.4f\n", x15(4));

%% c)
Q = T(1:4,1:4);
F = sum(inv(eye(size(Q))-Q));
disp (F(3));

markov(T);
