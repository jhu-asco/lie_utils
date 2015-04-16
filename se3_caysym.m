v = symvec('v',6)

x = [symvec('x',3); 0; 0; 0]

%simplify(se3_cay(v))

se3_dcayinv(v)

dci = inv(se3_dcayinv(v));

rank(dci)

dci'*x
