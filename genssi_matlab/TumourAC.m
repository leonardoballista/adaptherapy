function model = TumourAC()

syms s r
syms r_s r_r alpha_rs alpha_sr K real

model.sym.x    = [s; r];
model.sym.p    = [r_s; r_r; alpha_rs; alpha_sr; K];
model.sym.xdot = [
    r_s * s * (1 - (s + alpha_rs*r)/K);
    r_r * r * (1 - (r + alpha_sr*s)/K)
];
model.sym.y  = s + r;
model.sym.g  = sym(zeros(2,1));
model.sym.x0 = sym([]);

end