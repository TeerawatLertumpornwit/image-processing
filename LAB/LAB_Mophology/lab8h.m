I = imread('text.png');
J = bwmorph(I,'thin');
K = bwmorph(J,'thick');
figure; subplot(131); imshow(I);
subplot(132); imshow(J);
subplot(133); imshow(K);