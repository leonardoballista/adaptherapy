function model = TumourSCTr()

syms s r
syms r_s r_r alp K t_s t_r real

model.sym.x    = [s; r];
model.sym.p    = [r_s; r_r; alp; K; t_s; t_r];
model.sym.xdot = [
    r_s * s * (1 - (s + alp*r)/K) - t_s*s + t_r*r;
    r_r * r * (1 - (r + alp*s)/K) + t_s*s - t_r*r
];
model.sym.y  = s + r;
model.sym.g  = sym(zeros(2,1));
model.sym.x0 = sym([]);

end