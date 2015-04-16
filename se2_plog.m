function f = se2_plog(g)

f = [atan2(g(2,1), g(1,1)); g(1:2,1:2)'*g(1:2,3)];
