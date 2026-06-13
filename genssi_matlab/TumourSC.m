function model = TumourSC()

syms s r
syms r_s r_r alp K real

model.sym.x    = [s; r];
model.sym.p    = [r_s; r_r; alp; K];
model.sym.xdot = [
    r_s * s * (1 - (s + alp*r)/K);
    r_r * r * (1 - (r + alp*s)/K)
];
model.sym.y  = s + r;
model.sym.g  = sym(zeros(2,1));
model.sym.x0 = sym([]);

end