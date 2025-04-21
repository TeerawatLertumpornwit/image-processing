I = im2double(imread('cell.tif'));
w1 = [0 1 0; 1 -4 1; 0 1 0];
L = filter2(w1,I,'same');
J = I - L;
figure; subplot(221); imshow(I); title('original');
subplot(222); imshow(L); title('Laplacian');
subplot(224); imshow(L.^0.5); title('enhanced Laplacian');
subplot(223); imshow(J); title('sharpened image');