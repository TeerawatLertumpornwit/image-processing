img4 = imread('tissue.png');
imfinfo('tissue.png')
R = img4; R(:,:,2) = 0; R(:,:,3) = 0;
G = img4; G(:,:,1) = 0; G(:,:,3) = 0;
B = img4; B(:,:,1) = 0; B(:,:,2) = 0;
figure; subplot(231); imshow(R);
subplot(232); imshow(G);
subplot(233); imshow(B);
subplot(234); imshow(img4(:,:,1));
subplot(235); imshow(img4(:,:,2));
subplot(236); imshow(img4(:,:,3));