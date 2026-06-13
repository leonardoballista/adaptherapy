function expCond = ExpCond2Exp_Known()

expCond.sym.x0 = [100,  90;
                   30,  40];

syms u_dummy
expCond.sym.u = [u_dummy, u_dummy];

end