%% ex01a
d = 6;
N = 10000;
lanc = ceil(rand(1,N)*6);
x = [1:d];
y = zeros(size(x));
for k= 1:6
    y(k) = sum(lanc==k)/N;
end
hold on
stem(x,y);
xlabel('Dice Side');
ylabel('Probability');
set(gca,'XTick',x);
%ex01b
figure(2);
stem(x,cumsum(y));
hold off