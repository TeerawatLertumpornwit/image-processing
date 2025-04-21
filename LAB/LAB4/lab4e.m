I = im2double(imread('cameraman.tif'));
J = imnoise(I,'salt & pepper',0.1);
tic,K1 = outlier(J,0.5); toc
immse(I,K1)
K2 = medfilt2(J);
immse(I,K2)