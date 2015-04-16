function f = se2_Ad(g)
f = [1, 0, 0;
     [ g(2,3);
       -g(1,3)], g(1:2,1:2)];
