function f = se2_dcay(v)
f = 4/(4+v(1)^2)*(eye(3) + 1/2*se2_ad(v));