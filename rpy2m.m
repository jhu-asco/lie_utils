function m = rpy2m(rpy)
r = rpy(1);
p = rpy(2);
y = rpy(3);
ca = cos(y);
sa = sin(y);
cb = cos(p);
sb = sin(p);
cc = cos(r);
sc = sin(r);

m = [ca*cb, ca*sb*sc-sa*cc, ca*sb*cc+sa*sc;
     sa*cb, sa*sb*sc+ca*cc, sa*sb*cc-ca*sc;
     -sb, cb*sc, cb*cc];