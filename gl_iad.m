function v = gl_iad(E, Jt, xi)
vn = size(E,3);
v = zeros(vn,1);
for i=1:vn,
  v(i) = trace(Jt*xi'*E(:,:,i));
end