clear, clf
I = im2double(imread('cell.tif'));
J = imadjust(I,[0.4 0.6],[0.1 0.9]);
figure;
subplot(221), imshow(I);
subplot(223), imhist(I);
subplot(222), imshow(J);
subplot(224), imhist(J);