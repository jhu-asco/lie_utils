function f = se3_dcayinv(v)
w = v(1:3);
v = v(4:6);

wh = so3_hat(w);

A = eye(3) - wh/2;
f = [A + w*w'/4, zeros(3);
     -1/2*A*so3_hat(v), A];