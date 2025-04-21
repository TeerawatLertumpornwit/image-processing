I = imread('coins.png') > 100;
CC = bwconncomp(I);
J = zeros(size(I));
for k = 1:CC.NumObjects
    J(CC.PixelIdxList{k})= k;
end;
max(max(J)) %there are 10 obj in the background
J = J/CC.NumObjects;
imshow(J); colormap(jet(CC.NumObjects));