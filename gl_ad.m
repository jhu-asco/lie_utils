function xi = gl_ad(E, v)
xi = zeros(size(E,1), size(E,2));
for i=1:size(E,3),
  xi = xi + E(:,:,i)*v(i);
end