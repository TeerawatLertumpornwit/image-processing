img = im2double(imread('text.png'));
imtool(img);
a = img(30:45,85:100); imtool(a);
y = filter2(a,img);
z = y/max(y(:)); imshow(z);
B = (z>0.9); figure; imshow(B);