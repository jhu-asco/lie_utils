function [x,varargout] = gn(f, x0, varargin)

x = x0;
n = 1;
tol = 1e-10;

y=[];
A=[];

i = 0;
imax = 50;

while(n > 1e-5 && i < imax)
  [y, A] = feval(f, x, varargin{:});
  if (isempty(A)),
    A = fdm(f, x, tol, varargin{:});
  end
  Api=[];
  if (size(A,1)==size(A,2)),
    Api = inv(A);
  else,
    Api = pinv(A);
  end
  dx = - Api*y;
  xc = x + dx;
  n = norm(xc-x);
  x = xc;
  
  if (nargout>3 && i == 0)
    [yn,An] = feval(f, x, varargin{:});
    varargout(3) = {[norm(Api*yn)/norm(dx); norm(dx)]};
  end
  
  i = i + 1;
end

if (nargout>1)
  varargout(1) = {y};
end

if (nargout>2)
  varargout(2) = {A};
end

if (nargout>4)
  varargout(4) = {i};
end
