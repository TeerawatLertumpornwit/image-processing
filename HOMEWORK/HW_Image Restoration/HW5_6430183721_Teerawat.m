I = im2double(imread('IP_HW5_periodicNoise.png'));
FJ = fftshift(fft2(I));

figure;
subplot(2,3,1); imagesc(abs(FJ)); title('Magnitude Spectrum');
subplot(2,3,2); imagesc(log(1+abs(FJ))); title('Log Magnitude Spectrum');
impixelinfo;

% กำหนดตำแหน่งของจุดรบกวนที่ต้องการเอาออก
ns = [180 180; 222 222; 201 201];
[x, y] = meshgrid(1:size(FJ,2), 1:size(FJ,1));
D1 = sqrt((x-ns(1,1)).^2 + (y-ns(1,2)).^2);
D2 = sqrt((x-ns(2,1)).^2 + (y-ns(2,2)).^2);
D3 = sqrt((x-ns(3,1)).^2 + (y-ns(3,2)).^2);
r = 3; % กำหนดรัศมีของฟิลเตอร์
H = (D1 > r) & (D2 > r) & (D3 > r);

FK = FJ .* H;
K = real(ifft2(ifftshift(FK)));

subplot(2,3,3); imshow(H, []); title('Filter Mask');
subplot(2,3,4); imagesc(log(1+abs(FK))); title('Filtered Spectrum');
subplot(2,3,5); imshow(I, []); title('Original Image');
subplot(2,3,6); imshow(K, []); title('Filtered Image');


I = im2double(imread('IP_HW5_periodicNoiseLena.png'));
FJ = fftshift(fft2(I));

figure;
subplot(2,3,1); imagesc(abs(FJ)); title('Magnitude Spectrum');
subplot(2,3,2); imagesc(log(1+abs(FJ))); title('Log Magnitude Spectrum');
impixelinfo;

% กำหนดตำแหน่งของจุดรบกวนที่ต้องการเอาออก
col_range = [256:258];
row_range = [256:258];
[x, y] = meshgrid(1:size(FJ,2), 1:size(FJ,1));

H = ~((ismember(x, col_range)) | (ismember(y, row_range))) ; % ปิดฟิลเตอร์ที่หลักและแถว 256-258

FK = FJ .* H;
K = real(ifft2(ifftshift(FK)));

subplot(2,3,3); imshow(H, []); title('Filter Mask');
subplot(2,3,4); imagesc(log(1+abs(FK))); title('Filtered Spectrum');
subplot(2,3,5); imshow(I, []); title('Original Image');
subplot(2,3,6); imshow(K, []); title('Filtered Image');
