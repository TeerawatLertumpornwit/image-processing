l = [1 2 5 5; 1 1 4 3; 2 2 2 2];
w = [2 1 0; 1 0 1; 0 1 2];
J1 = filter2(w,l,'valid')
J2 = filter2(w,l,'same') %assume zero padding.
J3 = imfilter(l,w,"replicate") 