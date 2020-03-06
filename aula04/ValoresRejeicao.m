function [z,y2] = ValoresRejeicao(a,b,N)

y = rand(1,N);
x = rand(1,N) * (b-a) + a;


fx = 1/(sqrt(2*pi))*exp(-x.^2 / 2);

z = x(y <= fx);
y2 = y(y <= fx);

end