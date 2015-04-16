function gi = se3_gi(g)

gi = [g(1:3,1:3)', -g(1:3,1:3)'*g(1:3,4);
      zeros(1,3), 1];