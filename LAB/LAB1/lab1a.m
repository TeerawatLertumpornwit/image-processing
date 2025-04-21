help imdemos
imfinfo('cell.tif')
img1 = imread('cell.tif');
whos
imshow(img1); 
imtool(img1);
impixel(img1,34,35)
img2 = img1(58:145,7:94);
figure; imshow(img2)
fname = 'text.png'
img3 = imread(fname);
imshow(img3);
imfinfo(fname)