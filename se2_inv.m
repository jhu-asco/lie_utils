function gi = se2_inv(g)

gi = [g(1:2,1:2)', -g(1:2,1:2)'*g(1:2,3);
      zeros(1,2), 1];