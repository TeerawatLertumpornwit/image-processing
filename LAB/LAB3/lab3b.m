l = im2double(imread('cameraman.tif'));
w1 = fspecial('average') %ไม่ใส่เลขเป็น3x3
J1 = filter2(w1,l,'same');
w2 = fspecial('average',15) %15x15
J2 = filter2(w2,l,'same');
J3 = imfilter(l,w2,'replicate');
figure; subplot(221); imshow(l); title('original');
subplot(222); imshow(J1); title('blur 3x3');
subplot(223); imshow(J2); title('blur 15x15 zero pad');
subplot(224); imshow(J3); title('blur 15x15 reflective pad');
