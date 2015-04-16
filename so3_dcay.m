function f = so3_dcay(v)
f = 4/(4+v'*v)*(eye(3) + so3_hat(v)/2);