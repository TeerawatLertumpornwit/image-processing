I = imread('cameraman.tif');
r = 0:0.1:1;
s = sin(5*r) + 0.2*cos(5*r);
figure; plot(r,s)
R = im2double(I);
S = sin(5*R)+0.2*cos(5*R);
figure; subplot(121); imshow(R);
subplot(122); imshow(S);