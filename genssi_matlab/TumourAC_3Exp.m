function model = TumourAC_3Exp()
    % Symbolic variables
    syms sExp1 rExp1 sExp2 rExp2 sExp3 rExp3
    syms r_s r_r alpha_rs alpha_sr K
    syms s0_1 r0_1 s0_2 r0_2 s0_3 r0_3 real

    % Parameters
    model.sym.p = [r_s; r_r; alpha_rs; alpha_sr; K];

    % State variables
    model.sym.x = [sExp1; rExp1; sExp2; rExp2; sExp3; rExp3];

    % Control vectors (g)
    model.sym.g = [];

    % Autonomous dynamics (f)
    model.sym.xdot = [
        -r_s*sExp1*((sExp1 + alpha_rs*rExp1)/K - 1);
        -rExp1*r_r*((rExp1 + alpha_sr*sExp1)/K - 1);
        -r_s*sExp2*((sExp2 + alpha_rs*rExp2)/K - 1);
        -rExp2*r_r*((rExp2 + alpha_sr*sExp2)/K - 1);
        -r_s*sExp3*((sExp3 + alpha_rs*rExp3)/K - 1);
        -rExp3*r_r*((rExp3 + alpha_sr*sExp3)/K - 1)
    ];

    % Initial conditions (simboliche, note)
    model.sym.x0 = [s0_1; r0_1; s0_2; r0_2; s0_3; r0_3];

    % Observables
    model.sym.y = [rExp1 + sExp1; rExp2 + sExp2; rExp3 + sExp3];

end