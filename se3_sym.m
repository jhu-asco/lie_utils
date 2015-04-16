function f = se3_sym(a, b, I)
f = -(1./I).*(se3_ad(a)'*(I.*b) + se3_ad(b)'*(I.*a));