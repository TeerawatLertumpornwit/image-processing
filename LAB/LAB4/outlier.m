function g = outlier(im, d)
f = [1 1 1; 1 0 1; 1 1 1]/8;
imd = im2double(im);
imf = filter2(f,imd);
r = abs(imd - imf) > d; %% noisy pixels = 1
g = r.* imf + (1 - r).*imd;
