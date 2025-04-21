I = im2double(imread('rice.png'));
level = graythresh(I)
J = I > level;
figure; subplot(131); imshow(I);
subplot(132); imhist(I);
line([level level], [0 1000], 'Color', 'red');
subplot(133); imshow(J);