function e = s3_q2e(q)
a = 2*acos(q(4));
d = sin(a/2);
if (d < eps)
  e = [0;0;0];
  return
end
e = a*q(1:3)/d;
