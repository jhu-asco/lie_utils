function f = se2_gi(q)

if size(q,1) == 1 || size(q,2) == 1
  f = [cos(q(1)), sin(q(1)), -q(2)*cos(q(1))-q(3)*sin(q(1));
       -sin(q(1)), cos(q(1)), q(2)*sin(q(1))-q(3)*cos(q(1));
       0, 0, 1];
  
else  
  R = q(1:2,1:2);
  x = q(1:2,3);
  f = [R', -R'*x;
       0 0 1];
end