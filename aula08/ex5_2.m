TransitionMatrix = [0.7 0.2 0.3; 0.2 0.3 0.3; 0.1 0.5 0.4];

finalMatrix = zeros(9,20);
for i = 1:20
    m = TransitionMatrix^(i+1);
    finalMatrix(:,i) = m(:);
end
plot(finalMatrix');



