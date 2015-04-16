function q = s3_mult(qa, qb)
%if (abs(qa(1)-1) < eps)
%  q = qb;
%  return
%end
%if (abs(qb(1)-1) < eps)
%  q = qa;
%  return
%end

t0 = (qa(3)-qa(2))*(qb(2)-qb(3));
t1 = (qa(4)+qa(1))*(qb(4)+qb(1));
t2 = (qa(4)-qa(1))*(qb(2)+qb(3));
t3 = (qa(3)+qa(2))*(qb(4)-qb(1));
t4 = (qa(3)-qa(1))*(qb(1)-qb(2));
t5 = (qa(3)+qa(1))*(qb(1)+qb(2));
t6 = (qa(4)+qa(2))*(qb(4)-qb(3));
t7 = (qa(4)-qa(2))*(qb(4)+qb(3));
t8 = t5+t6+t7;
t9 = (t4+t8)/2.0;

q = [t1+t9-t8;
     t2+t9-t7;
     t3+t9-t6;
     t0+t9-t5];