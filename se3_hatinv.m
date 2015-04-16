function v = se3_hatinv(xi)
v = [so3_hatinv(xi(1:3,1:3)); xi(1:3,4)];
