function f = se3_dexpinv(v)
a = se3_ad(v);
f = eye(6) - 1/2*a + 1/12*a*a;