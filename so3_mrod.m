function f = so3_mrod(v)
n = v'*v;
vh = so3_ad(v);
f = eye(3) + (4*(1-n) + 8*vh)*vh/(1+n)^2;