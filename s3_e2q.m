function q = s3_e2q(e)
a = norm(e);
if (a < eps)
  q = [0;0;0;1];
  return
end
q = [e/a*sin(a/2); cos(a/2)];