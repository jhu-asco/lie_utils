e = [.1; .4; 1.3]

R = so3_exp(e)
q = s3_e2q(e)

so3_q2R(q)

s3_q2e(q)

e2 = [.2; .8; .1];

R2 = so3_exp(e2);

e3 = so3_log(R*R2)

q2 = s3_e2q(e2);

q3 = s3_mult(q, q2)

s3_e2q(e3)

s3_mult(q, s3_inv(q))