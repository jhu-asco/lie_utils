function f = so3_Ddcay(u, v)
  
p = 4+u'*u;
f = -2*(4 + 2*u'*v)/(p*p)*(2*eye(3)+so3_ad(u)) + 2/p*so3_ad(v);  