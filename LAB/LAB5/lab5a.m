I = im2double(imread('cameraman.tif'));
PSF = fspecial('motion',21,11);
J1 = imfilter(I,PSF,'conv','circular');
noise_var = 0.000001; %ลดเลข ลดnoise
J2 = imnoise(J1,'gaussian',0,noise_var);
K1 = deconvwnr(J2,PSF,0);
nsr = noise_var/var(I(:));
K2 = deconvwnr(J2,PSF,nsr);
figure; subplot(221); imshow(J1);
subplot(222); imshow(J2);
subplot(223); imshow(K1);
subplot(224); imshow(K2);