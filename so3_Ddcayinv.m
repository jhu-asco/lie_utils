function f = so3_Ddcayinv(v,w)
vh = so3_ad(v);
wh = so3_ad(w);
f = (dot(v,w)/2)*eye(3) - wh/2 + (vh*wh + wh*vh)/4;