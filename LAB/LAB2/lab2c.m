I = imread('cameraman.tif');
I = im2double(I);
J = abs(fftshift(fft2(I)));
K = log(J+1);
figure; subplot(131); imshow(I);
subplot(132); imshow(J/max(J(:)));
subplot(133); imshow(K/max(K(:)));