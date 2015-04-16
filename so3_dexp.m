function f = so3_dexp(v)

a = sqrt(v'*v);

if (a == sym('0') || (isnumeric(v(1)) && a < eps))
  f = eye(3);
  return
end

c1 = sin(a)/a;
c2 = 2*sin(a/2)^2/a^2;
c3 = (2*cos(a/2)*sin(a/2)/a^2 - 4*sin(a/2)^2/a^3 + c2^2*a)/(c1*a);

f = c1*eye(3) + c2*so3_ad(v) + c3*v*v';