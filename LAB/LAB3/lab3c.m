l = im2double(imread('pout.tif'));
J1 = edge(l,'prewitt');
J2 = edge(l,'sobel');
J3 = edge(l,'canny');
figure; subplot(221); imshow(l);
subplot(222); imshow(J1);
subplot(223); imshow(J2);
subplot(224); imshow(J3);