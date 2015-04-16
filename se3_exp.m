function g = se3_exp(v)

theta = sqrt(v(1:3)'*v(1:3));

%if (theta == sym('0') || (isnumeric(v(1)) && (theta < eps)))

if theta == sym('0')
  g = [eye(3), v(4:6);
       zeros(1,3), 1];
  return  
end


if (isnumeric(v(1)) && theta < eps)
  g = [eye(3), v(4:6);
       zeros(1,3), 1];
  return
end

g = [so3_exp(v(1:3)), so3_dexp(v(1:3))*v(4:6);
     zeros(1, 3), 1];