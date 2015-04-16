function f = ddcayinv(u, v, w)

%f = (eye(size(u))-u/2)*v*(eye(size(u))+u/2); dcayinv
%f = -1/2*w*v*(eye(size(u))+u/2) + 1/2*(eye(size(u))-u/2)*v*w
a = v*w; b = w*v;
f = 1/2*(a-b) - u/4*(a+b);