A = zeros(5,5); A(2,2) = 1; A(2,3) = 1;
A(3,3) = 1; A(4,3) = 1; A(4,4) = 1;
b = zeros(3,3); b(1,1) = 1; b(2,1) = 1;
b(2,2) = 1;
A
b
C = imerode(A,b)