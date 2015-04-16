function f = se2_pexp(v)

if (isnumeric(v(1)) && abs(v(1)) < eps)
  f = [1, 0, v(2);
       0, 1, v(3);
       0, 0, 1];
else,
  R = [ cos(v(1)), -sin(v(1)); 
        sin(v(1)), cos(v(1))];
  
  f = [R, R*v(2:3);
       0, 0, 1];
end
