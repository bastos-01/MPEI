img = imread('t.png');
[l,c] = size(img);
M = zeros(l,c);
cor = 5;

for i = 1: l
    for k = 1: c
        if(img(i,k) == cor)
            M(i,k) = 1;
        end
    end
end

obj = bwboundaries(M);
num_obj = length(obj);

figure(1);
imshow(M);

fprintf("Existem %d objetos da cor selecionada\n", num_obj);

%% 2)
[img2,map2] = imread('t.png');
newmap = rgb2gray(map2);
figure(2);
imshow(img2,newmap);

P = img2(:,:,1) >= 1;
figure(3);
imshow(P);

obj2 = bwboundaries(P);
num_obj2 = length(obj2);

fprintf("Existem %d objetos na imagem\n", num_obj2);

