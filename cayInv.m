function f = cayInv(R)
f = -2*inv(eye(size(R))+R)*(eye(size(R))-R);