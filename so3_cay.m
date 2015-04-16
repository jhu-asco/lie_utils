function g = so3_cay(v)
vh = so3_ad(v);
g = eye(3) + 4/(4+v'*v)*(vh + vh*vh/2);