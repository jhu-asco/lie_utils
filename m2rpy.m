function f = m2rpy(m)

f = [atan2(m(3,2), m(3,3));
     atan2(-m(3,1), sqrt(m(3,2)*m(3,2) + m(3,3)*m(3,3)));
     atan2(m(2,1), m(1,1))];
