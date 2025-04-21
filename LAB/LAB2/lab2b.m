I = imread('cameraman.tif');
J = imcomplement(I);
figure;
subplot(121),imshow(I);
subplot(122), imshow(J);