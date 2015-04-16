function f = so3_rod_mult(u, v)
f = 1/(1-u'*v)*(u + v + cross(u, v));