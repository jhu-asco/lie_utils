function f = so3_dcayinv(v)
f = eye(3) - so3_ad(v)/2 + v*v'/4;