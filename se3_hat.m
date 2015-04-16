function xi = se3_hat(v)
xi = [so3_hat(v(1:3)), v(4:6);
      zeros(1,4)];
