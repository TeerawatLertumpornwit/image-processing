p = imread('pout.tif');
figure, imshow(p), title('original image');
figure, imhist(p), axis tight, title('original hist')
pheq = histeq(p);
figure, imshow(pheq)
title('After Histogram Equalization');
figure, imhist(pheq), axis tight
title('Histogram of the hist-equalized image')