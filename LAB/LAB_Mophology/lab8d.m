c = imread('coins.png')
r = c > 150;
se = strel('disk',5)
LHS = ~imerode(r,se);
RHS = imdilate(~r,se);
subplot(211); imshow(LHS);
subplot(212); imshow(RHS);
% To check if they are equal
all(LHS(:)==RHS(:))