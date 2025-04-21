c= imread('cameraman.tif');
head = c(33:96,90:153);
imshow(head)
head4n = imresize(head,4,'nearest');
head4b = imresize(head,4,'bilinear');
head4c = imresize(head,4,'bicubic');
scrsz = get(0,'ScreenSize');
figure('Position',[10 scrsz(4)/2 scrsz(3) scrsz(4)/2])
subplot(131), imshow(head4n), title('nearest')
subplot(132), imshow(head4b), title('bilinear')
subplot(133), imshow(head4c), title('bicubic')