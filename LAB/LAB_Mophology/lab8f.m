C = imread('circles.png');
B = bwmorph(C,'remove');
imshow(B)