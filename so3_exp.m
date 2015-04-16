function f = so3_exp(w, varargin)

theta = sqrt(w'*w);

if ~isnumeric(w(1)) && theta == sym('0')
  f = sym(eye(3));
  return
end

if (isnumeric(w(1)) && theta < eps)
  f = eye(3);
  return
end


%if (theta < eps)
%  f = eye(3);
%  return
%end



w_ = w/theta;
wh = so3_ad(w_);

f = eye(3) + wh*sin(theta) + wh*wh*(1-cos(theta));

if (~isnumeric(w(1)))
  for i=1:length(w),
    f = subs(f, {['(' char(w(i)) '^2)^(1/2)']}, {char(w(i))});
    f = subs(f, {['(' char(w(i)) '^2)^(1/2)']}, {char(w(i))});
    f = subs(f, {['(' char(w(i)) '^2)^(1/2)']}, {char(w(i))});
  end
end
