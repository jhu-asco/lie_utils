function A = so3_rodroot(A, N)

k = log2(N);
l=1;
for i=1:k
  l = l*(sqrt(1+l*l*A'*A)-1)/(l*l*A'*A);
end
A=l*A;