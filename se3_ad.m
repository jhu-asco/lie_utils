function f = se3_ad(v)
wh = so3_hat(v(1:3));
f = [wh, zeros(3,3);
     so3_hat(v(4:6)), wh];