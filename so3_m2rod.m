function f = so3_m2rod(m)

t = trace(m);
phs = (3-t)/(1+t);

mb = m*(1+phs);

f(1) = (mb(3,2)-mb(2,3))/4;
f(2) = (mb(1,3)-mb(3,1))/4;
f(3) = (mb(2,1)-mb(1,2))/4;
