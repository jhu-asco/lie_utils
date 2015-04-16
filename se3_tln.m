function f = se3_tln(v)
f = eye(6) - se3_ad(v)/2;