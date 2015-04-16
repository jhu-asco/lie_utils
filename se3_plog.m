function f = se3_plog(g)

R = g(1:3,1:3);
f = [so3_log(R); R'*g(1:3,4)];