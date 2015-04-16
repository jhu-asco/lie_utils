function f = se3_Ad(g)
R = g(1:3,1:3);
x = g(1:3,4);
f = [R, zeros(3);
     so3_hat(x)*R, R];
