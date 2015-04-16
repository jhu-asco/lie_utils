function f = se2_cay(v)

w2 = v(1)^2;
f = [1/(4+w2)*[-(-4+w2), -4*v(1), -2*(v(1)*v(3)-2*v(2));
                 4*v(1), -(-4+w2),  2*(2*v(3)+v(2)*v(1))];
     0,         0,              1];


%  omega=v(1)/2;
%  vx = v(2)/2;
%  vy = v(3)/2;
%  f = [1/(1+omega^2)*[1, -omega, -omega*vy+vx;
%                    omega, 1, vy + vx*omega]
%       0, 0, 1]*[1, -omega, vx; omega, 1, vy; 0, 0, 1];
  