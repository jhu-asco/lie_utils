function df = fdm(f, x, e, varargin)
N = length(x);
df = [];

for i=1:N,
  xl = x;
  xl(i) = xl(i) - e;
  xr = x;
  xr(i) = xr(i) + e;
  yr = feval(f, xr, varargin{:});
  if (isempty(df))
    zeros(length(yr), N);
  end
  df(:,i) = (yr - feval(f, xl, varargin{:}))/(2*e);
end
