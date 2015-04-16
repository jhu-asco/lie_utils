function [x,varargout] = hsolve(f, x0, opts, varargin)
  
N = length(x0)-1;
x = x0;

tol = 1e-6;

y=[];
A=[];

i = 0;

hmin = .1;
hmax = 100;

h = hmin;

pf = [1e-01; 1e-01];

while(1)
  disp('major')
  [y,A] = feval(f, x, varargin{:});
  if (isempty(A)),
    A = fdm(f, x, tol, varargin{:});
  end
  [Q,R] = qr(A');
  z = Q(:,N+1);

%  z = sign(det(Q)*det(R(1:N,1:N)))*z
  
  [xc, y, A, p, m] = gn(f, x + h*z, varargin{:});
  
  xc
  y
  p
  m
  
  s = xc(length(xc))
  
  keyboard
  
  sh = max(sqrt(p./pf))
  sh = max(min(sh, 2), .5);
  
  h = h/sh;
  
  if (sh<2)
    x = xc;
  end
  x = xc;
  
  %  keyboard

%  h = max(abs(x(N+1)-1)/10, hmin)
 h = 1;
  i = i + 1;

  if (x(N+1) > 1)
    break;
  end
end

i

if (nargout>1)
  varargout(1) = {y};
  varargout(2) = {A};
end





