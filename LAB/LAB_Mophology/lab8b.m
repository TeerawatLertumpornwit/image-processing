g = imread('coins.png');
A0 = g > 100;
se1 = strel('disk',9)
A1 = imdilate(A0,se1);
se2 = strel('diamond',9)
A2 = imdilate(A0,se2);
se3 = strel('octagon',9);
A3 = imdilate(A0,se3);
b = zeros(3,3); b(1,1) = 1; b(1,2) = 1; b(2,1) = 1
A4 = imdilate(A0,b);
figure; subplot(221); imshow(A1);
subplot(222); imshow(A2);
subplot(223); imshow(A3);
subplot(224); imshow(A4);