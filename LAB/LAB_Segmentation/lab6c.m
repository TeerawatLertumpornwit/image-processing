I = imread('cameraman.tif');
E = edge(I,'sobel');
figure; subplot(211); imshow(E)
[H, T, R] = hough(E);
subplot(212); imshow(imadjust(mat2gray(H)));
axis on; axis normal; colormap(hot)
peaks = houghpeaks(H,3);
lines = houghlines(E,T,R,peaks);
figure; imshow(I); hold on;
xy = [lines(1).point1; lines(1).point2]; plot( xy(:,1), xy(:,2) ,'r');
xy = [lines(2).point1; lines(2).point2]; plot( xy(:,1), xy(:,2) ,'g');
xy = [lines(3).point1; lines(3).point2]; plot( xy(:,1), xy(:,2) ,'b');