countries={'Vatican', 'Monaco', 'Liechtenstein', 'Cyprus', 'Belgium'};
countries2={'Liechtenstein','Portugal','Greenland','Monaco','Norway'};

m=length(countries);
n=8*m;
k=5;

B=inicializar(n);
for i=1 : m
  B=AdicionarElemento(B,countries{i},k);
end

fn=0;

for i=1 : m
  r=verificar(B,countries{i},k);
  if r
    fprintf(1,"%s esta no Filtro\n",countries{i});
  else
    fprintf(1,"%s nao esta no Filtro\n",countries{i});
    fn = fn + 1;
  end
end
disp("");

for i=1 : length(countries2)
  r=verificar(B,countries2{i},k);
  if r
    fprintf(1,"%s esta no Filtro\n",countries2{i});
  else
    fprintf(1,"%s nao esta no Filtro\n",countries2{i});
  end
end

fprintf(1,"Falsos Negativos: %d\n",fn);