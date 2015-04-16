function f = se3_br(a,b)
  f = [0;
       a(1)*b(3) - b(1)*a(3);
       b(1)*a(2) - a(1)*b(2)];