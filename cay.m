function f = cay(v)
f = inv(eye(size(v))-v/2)*(eye(size(v))+v/2);