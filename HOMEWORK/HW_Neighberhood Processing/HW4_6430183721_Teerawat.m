I = im2double(imread('Chast-Xray.jpg'));
w1 = fspecial('average',15);
J1 = imfilter(I, w1, 'replicate');
I_sharp = 2*I - J1;
I_sharp_contrast = histeq(I_sharp);
figure; subplot(131); imshow(I); title('original');
subplot(132); imshow(I_sharp); title('sharpened image');
subplot(133); imshow(I_sharp_contrast); title('sharpened contrast image');


