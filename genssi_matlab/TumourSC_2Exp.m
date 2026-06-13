function model = TumourSC_2Exp()
	% Symbolic variables
	syms sExp1 rExp1 sExp2 rExp2
	syms r_s r_r alp K

	% Parameters
	model.sym.p = [r_s;r_r;alp;K];

	% State variables
	model.sym.x = [sExp1;rExp1;sExp2;rExp2];

	% Control vectors (g)
	model.sym.g = [];

	% Autonomous dynamics (f)
	model.sym.xdot = [-r_s*sExp1*((sExp1 + alp*rExp1)/K - 1)
                      -rExp1*r_r*((rExp1 + alp*sExp1)/K - 1)
                      -r_s*sExp2*((sExp2 + alp*rExp2)/K - 1)
                      -rExp2*r_r*((rExp2 + alp*sExp2)/K - 1)];

	% Initial conditions
	model.sym.x0 = [100;30;90;40];

	% Observables
	model.sym.y = [rExp1 + sExp1;rExp2 + sExp2];
end