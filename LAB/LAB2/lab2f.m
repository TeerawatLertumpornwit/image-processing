x = imread('cell.tif');
min(x(:)),max(x(:))
x1 = im2double(x);
min(x1(:)),max(x1(:))
y1 = x1.^2
figure;
subplot(121), imshow(x1); title('x1');
subplot(122), imshow(y1); title('x1\^2');