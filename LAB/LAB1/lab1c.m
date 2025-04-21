fname = 'canoe.tif';
getfield(imfinfo(fname),'ColorType')
[img5, Cmap1] = imread(fname);
size(img5)
Cmap2 = colormap(jet(256));
Cmap3 = colormap(copper(256));
imshow(img5)
figure; imshow(img5,Cmap1);colorbar
figure; imshow(img5,Cmap2);colorbar
figure; imshow(img5,Cmap3);colorbar
img6=ind2rgb(img5,Cmap2);
figure; imshow(img6);
whos %check the size  of img6 and img5
imwrite(img6,'D:\EE4\ImageProcessing\LAB1\img.jpg')