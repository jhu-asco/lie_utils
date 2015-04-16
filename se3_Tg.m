function f = se3_Tg(g)

f = [g(1:3,1:3), zeros(3,3);
     zeros(3,3), g(1:3,1:3)];