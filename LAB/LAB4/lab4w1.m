t = imread('trees.tif');
t2 = t + 120; imtool(t2);
sp1 = imnoise(t, 'salt & pepper'); 
imtool(sp1);
sp2 = imnoise(t, 'salt & pepper', 0.2); 
figure; imtool(sp2);
ga1 = imnoise(t, 'gaussian'); imtool(ga1);
imtool(ga1);
ga2 = imnoise(t, 'gaussian', 0.5, 0.3); 
figure; imtool(ga2);
spk = imnoise(t2, 'speckle'); imtool(spk);
a7 = fspecial('average', [7 7])
sp = im2double(sp1);
sp_a7 = filter2(a7, sp); imtool(sp_a7);
a = fspecial('average')
sp_a = filter2(a, sp); figure; imtool(sp_a);
sp_m = medfilt2(sp); figure; imtool(sp_m);
sp2_m = medfilt2(sp2, [5 5]); imtool(sp2_m)
sp2_o = ordfilt2( sp2, 3, [0 1 0; 1 1 1;  0 1 0] );
