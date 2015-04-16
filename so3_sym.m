function f = so3_sym(a, b, I)
f = -(1./I).*(so3_ad(a)'*(I.*b) + so3_ad(b)'*(I.*a));