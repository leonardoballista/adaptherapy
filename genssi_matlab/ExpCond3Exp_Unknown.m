function expCond = ExpCond3Exp_Unknown()

syms s0_1 r0_1 s0_2 r0_2 s0_3 r0_3 real

expCond.sym.x0 = [s0_1, s0_2, s0_3;
                  r0_1, r0_2, r0_3];

syms u_dummy
expCond.sym.u = [u_dummy, u_dummy, u_dummy];

end