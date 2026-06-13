function model = TumourACTr()

syms s r
syms r_s r_r alpha_rs alpha_sr K t_s t_r real

model.sym.x    = [s; r];
model.sym.p    = [r_s; r_r; alpha_rs; alpha_sr; K; t_s; t_r];
model.sym.xdot = [
    r_s * s * (1 - (s + alpha_rs*r)/K) - t_s*s + t_r*r;
    r_r * r * (1 - (r + alpha_sr*s)/K) + t_s*s - t_r*r
];
model.sym.y  = s + r;
model.sym.g  = sym(zeros(2,1));
model.sym.x0 = sym([]);

end