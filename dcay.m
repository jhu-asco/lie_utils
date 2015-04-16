function f = dcay(v, u)
f = inv(eye(size(v))-v/2)*u*inv(eye(size(v))+v/2);