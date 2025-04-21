% Contra Harmonic Mean Filter
CHMF = @(M,Q) sum(sum(M.^(Q+1)))/sum(sum(M.^Q));
I = im2double(imread('cell.tif'));
J = imnoise(I,'gaussian',0,0.5);
K = nlfilter(I,[3,3], CHMF, 1.5)