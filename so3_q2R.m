function R = so3_q2R(q)

qx=q(1);
qy=q(2);
qz=q(3);
qw=q(4);

R = [(qw*qw + qx*qx - qy*qy -qz*qz), (2*(qx*qy - qw*qz)), (2*(qx*qz + qw*qy));
     (2*(qx*qy + qw*qz)), (qw*qw - qx*qx + qy*qy - qz*qz), (2*(qy*qz - qw*qx));
     (2*(qx*qz - qw*qy)), (2*(qy*qz + qw*qx)), (qw*qw - qx*qx - qy*qy ...
                                                + qz*qz)];
