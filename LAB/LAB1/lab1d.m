c=imread('cameraman.tif');
imfinfo('cameraman.tif')
image(c)
L=length(unique(c))
image(c), truesize, axis off, colormap(jet(L))
colormap(pink(L)); colorbar;