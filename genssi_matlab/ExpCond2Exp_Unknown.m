function expCond = ExpCond2Exp_Unknown()

syms s0_1 r0_1 s0_2 r0_2

% Due colonne = due esperimenti con CI diverse
expCond.sym.x0 = [s0_1, s0_2;   % stato s nelle due condizioni
                  r0_1, r0_2];  % stato r nelle due condizioni
expCond.sym.u  = [];

end