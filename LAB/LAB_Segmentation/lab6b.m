I = im2double(rgb2gray(imread('peppers.png')));
w = [0 0 -1 0 0; 0 -1 -2 -1 0; -1 -2 16 -2 -1; 0 -1 -2 -1 0; 0 0 -1 0 0];
J = filter2(w,I);
figure;
subplot(121); imshow(I);
subplot(122); imshow(J);