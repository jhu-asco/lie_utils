function f = se2_Tg(q)

if size(q,1) == 1 || size(q,2) == 1
  % if q is a vector 
  ca = cos(q(1));
  sa = sin(q(1));
  f = [1 0 0;
       0 ca -sa;
       0 sa ca];  
else
  % else it's matrix
  f = [1 0 0;
       zeros(2,1), q(1:2,1:2)];
end
