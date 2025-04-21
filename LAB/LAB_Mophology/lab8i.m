I = imread('circles.png');
J = bwmorph(I,'skel', Inf);
K = bwmorph(J,'spur', Inf);
figure; subplot(131); imshow(I);
subplot(132); imshow(J);
subplot(133); imshow(K);