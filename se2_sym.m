function f = se2_sym(a, b, I)
f = -(1./I).*(se2_ad(a)*(I.b) + se2_ad(b)*(I.a));