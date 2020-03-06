%% a)

T = [0.9 0.5 0.5;
    0.09 0.4 0.4;
    0.01 0.1 0.1];

x = [0 0 1]';

%% b)

x4 = T^4 * x;
%disp(x4);

%% c)

anterior = zeros(1,4);
while(sum(abs(x - anterior) > 0.001) ~= 0)
    anterior = x;
    x = T * x;
end

disp(x);
plot(x);
figure(2);
markov(T,x,0.001);

