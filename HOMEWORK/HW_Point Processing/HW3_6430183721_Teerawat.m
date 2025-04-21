clear, clf
I = im2double(imread('pout.tif'));
J = myimadjust(I,[0.3 0.7],[0.1 0.9]);
K = imadjust(I,[0.3 0.7],[0.1 0.9]);
figure
subplot(231), imshow(I);
subplot(234), imhist(I);
subplot(232), imshow(J);
subplot(235), imhist(J);
subplot(233), imshow(K);
subplot(236), imhist(K);