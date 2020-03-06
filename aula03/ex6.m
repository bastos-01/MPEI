%Pedro Bastos

%p("Sair um defeituoso") = 1/1000;
%em 8000 amostras, seria 8;

n = 8000;   %# de amostras
p = 1/1000; %prob de aparecer um chip com defeito
k = 7;      %# de chips com defeito que queremos que aparecam

%nCk = factorial(8000)/(factorial(7) * factorial(8000-7))

%p(k) = nCk * p^k * (1-p)^(n-k)

nCk = prod(n:-1:n-k+1)/prod(1:k); %resolver de maneira a cortar (n-7)!
pB7T = nCk * p^k * (1-p)^(n-k) %slides

disp("Usando a binomial:");
text = sprintf('P(7 defeituosos em 8000) = %f',pB7T);
disp(text);

%--------------------------------------------------

disp("Por Lei de Poisson: ")

%Por Poisson:
%pk = a^k/k! * e^-alfa ; onde alfa = media = n * p


m = 8 ; %media = (8000 * 1/1000) = 8 
k = 7 ;

pB7P = (m.^k / factorial(k)) * exp(-m);
text2 = sprintf('P(7 defeituosos em 8000) = %f',pB7P);
disp(text2);
