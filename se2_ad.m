function f = se2_ad(v)
  f = [0, 0, 0;
       v(3), 0, -v(1);
       -v(2), v(1), 0];