function expCond = ExpCond1Exp_Unknown()

% Frazioni s0, r0 ignote -> trattate come parametri simbolici
syms s0 r0

% x0: ogni colonna = un esperimento
% Le variabili simboliche verranno aggiunte ai parametri da identificare
expCond.sym.x0 = [s0; r0];   % colonna singola = 1 esperimento
expCond.sym.u  = [];          % nessun input

end