function f = so3_rod(v)
n = v'*v;
f = 1/(1+n)*((1-n)*eye(3) + 2*v*v' + 2*so3_ad(v));