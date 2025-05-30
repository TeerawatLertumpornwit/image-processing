c = checkerboard(20, 5, 5);
sx = 2; sy = 3; theta = pi/6;
A1 = [sx*cos(theta) sx*sin(theta) 0; - sy*sin(theta) sy*cos(theta) 0; 0 0 1 ];
T1 = maketform('affine', A1);
ca1 = imtransform(c, T1);
figure; imshow(ca1); title('affine: scale + rotate');
delta = 0.4;
A2 = [sx*cos(theta) delta*sx*sin(theta) 0; - sy*sin(theta) sy*cos(theta) 0; 0 0 1 ];
T2 = maketform('affine', A2);
ca2 = imtransform(c, T2);
figure; imshow(ca2); title('affine: shear + scale + rotate');
T3 = maketform('projective', [50 5 0.1; 30 50 0.1; 2 1 10]);
cp = imtransform(c,T3);
figure; imshow(cp); title('projective');