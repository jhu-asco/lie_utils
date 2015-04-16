function f = se2_dexpinv(v)
b1 = se2_ad(v);
f=eye(3)-1/2*b1+1/12*b1*b1;
