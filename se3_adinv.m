function [w,v] = se3_adinv(a)
w = so3_adinv(a(1:3,1:3));
v = a(1:3,4);
