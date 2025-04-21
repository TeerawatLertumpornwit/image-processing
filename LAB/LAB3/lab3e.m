img0 = imread('cameraman.tif');
f1 = [0 -1 0; -1 5.7 -1; 0 -1 0]; % Highboost filter
img1 = filter2(f1, img0, 'same')
figure, imshow(img1);
figure, imshow(mat2gray(img1));
f2 = fspecial('laplacian');
img2 = filter2(f2, img0, 'valid')
figure, imshow(img2);
figure; imshow(mat2gray(img2)); title('Laplacian')

