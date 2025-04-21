c = imread('cameraman.tif');
cmax = nlfilter(c, [3 3], 'max(x(:))');
tic, cmin = nlfilter(c, [3 3], 'min(x(:))'); toc
tic, cmin2 = colfilt(c, [3 3], 'sliding',@min); toc
tic, cmin3 = ordfilt2(c, 1, ones(3,3)); toc
tic, cmed = ordfilt2(c, 5, ones(3,3)); toc
tic, cmed2 = medfilt2(c,[3 3]); toc