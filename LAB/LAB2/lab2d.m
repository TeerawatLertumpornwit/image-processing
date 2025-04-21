I = rgb2gray(imread('football.jpg'));
figure;
for k = 1:8
    subplot(2,4,k); B= bitget(I,9-k);
    imshow(double(B));
end