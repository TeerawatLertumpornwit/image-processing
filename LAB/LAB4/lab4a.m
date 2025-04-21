img = imread('cameraman.tif');
roi = roipoly(img); %% set roi interactively
u = fspecial('unsharp');
img_u = roifilt2(u, img, roi);
figure, imshow(img_u);
a = fspecial('average', [12 12]);
img_a = roifilt2(a, img, roi);
figure, imshow(img_a);