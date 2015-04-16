function f = Ddcay(u, v, w)
A = inv(eye(size(u))-u/2);
B = inv(eye(size(u))+u/2);
f = A*w/2*A*v*B - A*v*B*w/2*B;