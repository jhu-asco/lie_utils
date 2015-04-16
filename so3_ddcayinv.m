function f = so3_ddcayinv(v)
vh = so3_ad(v);
f = (1+v'*v/4)*eye(3) - vh/2 + vh*vh/4;