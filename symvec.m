function f = symvec(str, n, varargin)
% produces a symbolic vector
% example: symvec('v', 3, 'real') = [v1; v2; v3];
props = 0;
if (nargin > 2),
  props = varargin{1};
else,
  props = 'real';
end
for i = 1:n,
  f(i) = sym([str num2str(i)], props);
end
f = f';


