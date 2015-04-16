function f = dcayinv(u, v)

f = (eye(size(u))-u/2)*v*(eye(size(u))+u/2);