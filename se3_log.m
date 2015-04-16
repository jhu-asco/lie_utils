function v = se3_log(g)

v = zeros(6,1);
v(1:3) = so3_hatinv(so3_log(g(1:3,1:3), 1));
v(4:6) = so3_dexpinv(v(1:3))*g(1:3,4);
