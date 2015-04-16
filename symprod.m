function e = se3_symprod(I, M, e1, e2)

w1 = e1(1:3); 
v1 = e1(4:6);
w2 = e2(1:3); 
v2 = e2(4:6);
e = [-inv(I)*(cross(I*w2,w1) + cross(I*w1,w2) + cross(M*v2,v1) + cross(M*v1,v2));
     -inv(M)*(cross(M*v2,w1) + cross(M*v1,w2))];