I0 = im2double(imread('cameraman.tif'));
for k = 1:10 %then change k=1:100
    I(:,:,k) = imnoise(I0,'gaussian',0,0.5);
end
imtool(I(:,:,1)); imtool(I(:,:,2));
J = mean(I,3); imtool(J);
MSE = mean(mean(J-I0).^2)