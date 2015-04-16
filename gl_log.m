function f = gl_log(g)
w=eye(size(g))-g;
f = -w-w*w/2-w*w*w/3;