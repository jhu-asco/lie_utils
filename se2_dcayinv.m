function f = se2_dcayinv(v)
f = eye(3) - 1/2*se2_ad(v) + 1/4*[v(1)*v, zeros(3,2)];
%f = eye(3) - 1/2*se2_ad(v);
