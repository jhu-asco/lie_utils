function f = symmat(str, m, n, varargin)
% produces a symbolic vector
% example: symvec('v', 3, 'real') = [v1; v2; v3];
props = 0;
if (nargin > 3),
  props = varargin{1};
else,
  props = 'real';
end

for i = 1:m,
  for j=1:n,
    f(i,j) = sym([str num2str(i) num2str(j)], props);
  end
end
