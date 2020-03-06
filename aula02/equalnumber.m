function prob=equalnumber(n,N,m)
resultado= randi([1,m],n,N);
numsucesso=0;
 for i=1 : N
     if length(unique(resultado(:,i)))==n
         numsucesso=numsucesso+ 1;
     end
 end
 
 prob=1-numsucesso/N;
end