x = imread('cameraman.tif');
y = im2double(x);
z = double(x);
max(max(y))
max(max(z))
imtool(y)
imtool(z)