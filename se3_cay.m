function g = se3_cay(v)
  
w=v(1:3);
t = w'*w;
g = [so3_cay(w), 4/(4+t)*(eye(3)+so3_ad(w)/2+w*w'/4)*v(4:6);
     zeros(1,3), 1];