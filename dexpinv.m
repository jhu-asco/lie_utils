function f = dexpinv(v,w)
b1 = br(v,w);
f=v-1/2*b1+1/12*br(v,b1);

function f = br(v,w)
  f = v*w-w*v;