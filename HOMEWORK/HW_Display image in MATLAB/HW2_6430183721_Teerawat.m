fname='img.jpg';
img1 = imread(fname);
img2 = rgb2gray(img1);
Cmap1 = colormap(hsv(256));
img3 = ind2rgb(img2,Cmap1);
imshow(img1);colorbar
figure; imshow(img2);colorbar
figure; imshow(img3);colorbar
imwrite(img1,'D:\EE4\ImageProcessing\HW2_6430183721_Teerawat\img01.jpg')
imwrite(img2,'D:\EE4\ImageProcessing\HW2_6430183721_Teerawat\img02.jpg')
imwrite(img3,'D:\EE4\ImageProcessing\HW2_6430183721_Teerawat\img03.jpg')
