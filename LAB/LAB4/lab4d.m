I = im2double(imread('cameraman.tif'));
J = imnoise(I,'gaussian',0,0.05);
W = fspecial('average',3);
K1 = filter2(W,J,'same');
K2 = nlfilter(J,[3 3], 'geomean(x(:))');
K3 = nlfilter(J,[3 3], 'harmmean(x(:))');
MSE = [immse(K1,I) immse(K2,I) immse(K3,I)]