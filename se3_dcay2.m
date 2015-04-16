function f = se3_dcay2(v)
w=v(1:3);
v=v(4:6);

wh=so3_hat(w);
wn = (w'*w + 4);

f = [so3_dcay(w), zeros(3);
     so3_hat(v/wn)*(2*eye(3) + wh), eye(3) + (2*wh + wh^2)/wn];
