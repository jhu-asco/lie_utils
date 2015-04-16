function f = fix_angle(a)
f = mod(a,2*pi);
if (f>pi),
  f = f-2*pi;
else
  if (f<-pi),
    f = f+2*pi;
  end
end
