I = im2double(imread('cell.tif'));
w1 = [0 -1 0; -1 5 -1; 0 -1 0]  %sharpening filter
J1 = filter2(w1, I, 'same');
w2 = [0 -1 0; -1 5.7 -1; 0 -1 0]  %highboost filter
J2 = filter2(w2, I, 'same');
figure; subplot(131); imshow(I); title('original');
subplot(132); imshow(J1); title('sharpen');
subplot(133); imshow(J2); title('highboost');