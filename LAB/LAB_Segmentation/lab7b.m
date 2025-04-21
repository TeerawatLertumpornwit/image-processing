I = im2double(imread('coins.png'));
sobelmask = [-1 2 -1; -1 2 -1; -1 2 -1];
Ix = imfilter(I, sobelmask,'replicate');
Iy = imfilter(I, sobelmask,'replicate');
dI = abs(Ix)+abs(Iy);
J = watershed(dI);
figure; subplot(131); imshow(I); subplot(132);
imshow(dI); subplot(133); imshow(J);