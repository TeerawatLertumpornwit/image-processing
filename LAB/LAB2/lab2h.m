clear
I = imread('pout.tif');
J = histeq(I);
figure,
subplot(221), imshow(I), title('original image');
subplot(222), imhist(I), title('original histogram');
subplot(223), imshow(J), title('hist-equalized image');
subplot(224), imhist(J), title('histogram of the outout image');