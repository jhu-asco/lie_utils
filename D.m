function f = D(F, q, t, varargin)
% partial derivative of F with respect to vector r
% q - all t-dependent variables
% t - independent variable
% r - are the t-dependent variables with respect to which the partial is taken
%        these should be a subset of the set {q, d_q, d2_q}
% varargin - either containts the vector r or not provided, r = t

if nargin < 4,
  r = t;
else
  r = varargin{1};
end

f = fixexp(F);
if (r == t),
  f = sym2fun(f, q, t);
  f = diff(f, t);
  f = fun2sym(f, q, t);
else,
  f = jacobian(f, r);
end
f = fixexp(f);


function f = adddep(q, t)
% adds dependence on t to variables q, i.e. q -> q(t)
if (q == t)
  f = t;
  return;
end
n = length(q);
for i=1:n,
  f(i) = sym([char(q(i)) '(' char(t) ')']);
end

function f = remdep(q_t, t)
% removes the dependence on t from functions q_t, i.e. q(t) -> q

if (q_t == t),
  f = t;
  return;
end
n = length(q_t);
arg = ['(' char(t) ')'];
f = q_t;
for i=1:n,
  s = char(q_t(i));	
  o = strfind(s, arg);
  if length(o),
    f(i) = sym(s(1:o-1));
  else,
    f(i) = q_t(i);
  end
end


function f = sym2fun(S, q, t)
% converts all t-independent functions q and their first and second
% derivatives in expression S into t-dependent symbols q_t
% q_t is a vector of t-dependent functions, t is the independent variable

n = size(q,1);
O = cell(3*n);
N = cell(3*n);

for i = 1:n,
  cqi = char(q(i));

  qi = sym(cqi, 'real');
  dqi = sym(strcat('d_', cqi), 'real');
  d2qi =  sym(strcat('d2_', cqi), 'real');

  qi_t = sym([cqi '(' char(t) ')']);
  dqi_t = diff(qi_t);
  d2qi_t = diff(qi_t,2);

  ind = 3*(i-1);
  O(ind+1:ind+3) = [ {qi}; {dqi}; {d2qi}];
  N(ind+1:ind+3) = [ {qi_t}; {dqi_t}; {d2qi_t}];
end
f = subs(S, O, N);



function f = fun2sym(S, q, t)
% converts all t-dependent functions q_t and their first and second
% derivatives in expression S into free symbols q
% q_t is a vector of t-dependent functions, t is the independent variable

n = size(q,1);
O = cell(3*n);
N = cell(3*n);

ct = char(t);

for i = 1:n,
  cqi = char(q(i));
  cqi_t = [cqi '(' ct ')'];

  qi = sym(cqi, 'real');
  dqi = sym(strcat('d_', cqi), 'real');
  d2qi =  sym(strcat('d2_', cqi), 'real');

  qi_t = sym(cqi_t);
  dqi_t = sym(['diff(' cqi_t ',' ct ')']);	
  d2qi_t = sym(['diff(' cqi_t ',$(' ct ',2))']);	

  ind = 3*(i-1);

  O(ind+1:ind+3) = [ {d2qi_t}; {dqi_t}; {qi_t} ];
  N(ind+1:ind+3) = [ {d2qi}; {dqi}; {qi} ];

end

f = subs(S, O, N);


function f = fixexp(S)
% removes any conjugates (assume all variable are real)
% this could cause problems
for i=1:length(S),
      if ~isempty(S(i)) && S(i)~=[0],
  S(i) = simplify(sym(strrep(char(S(i)), 'conj', '')));
  end
end
f = S;
