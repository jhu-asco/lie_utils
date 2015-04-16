function m = se3_rpyx(rpy, x)
m = [rpy2m(rpy(1),rpy(2),rpy(3)), x;
     0 0 0 1];