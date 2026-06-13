function model = TumourACTr_3Exp()
	% Symbolic variables
	syms sExp1 rExp1 sExp2 rExp2 sExp3 rExp3
	syms r_s r_r alpha_rs alpha_sr K t_s t_r

	% Parameters
	model.sym.p = [r_s;r_r;alpha_rs;alpha_sr;K;t_s;t_r];

	% State variables
	model.sym.x = [sExp1;rExp1;sExp2;rExp2;sExp3;rExp3];

	% Control vectors (g)
	model.sym.g = [];

	% Autonomous dynamics (f)
	model.sym.xdot = [rExp1*t_r - sExp1*t_s - r_s*sExp1*((sExp1 + alpha_rs*rExp1)/K - 1)
                      sExp1*t_s - rExp1*t_r - rExp1*r_r*((rExp1 + alpha_sr*sExp1)/K - 1)
                      rExp2*t_r - sExp2*t_s - r_s*sExp2*((sExp2 + alpha_rs*rExp2)/K - 1)
                      sExp2*t_s - rExp2*t_r - rExp2*r_r*((rExp2 + alpha_sr*sExp2)/K - 1)
                      rExp3*t_r - sExp3*t_s - r_s*sExp3*((sExp3 + alpha_rs*rExp3)/K - 1)
                      sExp3*t_s - rExp3*t_r - rExp3*r_r*((rExp3 + alpha_sr*sExp3)/K - 1)];

	% Initial conditions
	model.sym.x0 = [100;30;90;40;110;20];

	% Observables
	model.sym.y = [rExp1 + sExp1;rExp2 + sExp2;rExp3 + sExp3];
end