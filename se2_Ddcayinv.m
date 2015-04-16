function f = se2_Ddcayinv(v, w)
f = - 1/2*se2_ad(w) + 1/4*[w(1)*v + v(1)*w, zeros(3,2)];