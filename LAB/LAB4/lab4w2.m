I = im2double(imread('cameraman.tif'));
sz = size(I)
[x y] = meshgrid(1:sz (2),1:sz(1));
N =  sin(x + y / 1.5) ;  imtool(N);
J = I + N; imtool(J);
FJ = fftshift ( fft2(J)  );
figure; imagesc(abs(FJ));
figure; imagesc(log(1+abs(FJ))); 
impixelinfo;
ns = [88 102; 170 155];
D1 = sqrt((x-ns(1,1)).^2 + (y-ns(1,2)).^2);
D2 = sqrt((x-ns(2,1)).^2 + (y-ns(2,2)).^2);
r = 5;
H = (D1 > r & D2 > r); imtool(H);
FK = FJ.*H; 
figure; imagesc(log(1+abs(FK)));
K = real(ifft2(FK)); imtool(K)
