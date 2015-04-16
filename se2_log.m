function f = se2_log(g)

q = se2_c(g);
if (abs(q(1))<1e-6),
  f = q;
  return;
end
a = q(1)/2*cot(q(1)/2);
f = [q(1); [a q(1)/2; -q(1)/2 a]*q(2:3)];