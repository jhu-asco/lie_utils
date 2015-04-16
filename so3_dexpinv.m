function f = so3_dexpinv(u)
a = sqrt(u'*u);

if (a == sym('0') || (isnumeric(u(1)) && a < eps))
%if (a < 2*eps)
  f = ones(3);
  return
end

xi = hat(u);
f = eye(3)-1/2*xi+((1-a/2*cot(a/2))/(a*a))*xi*xi;