%% ============================================================
%  Analisi identificabilita' strutturale
%  Scenari SC, SC+Tr, AC, AC+Tr
%  3 serie temporali, CI numeriche note
%% ============================================================

clear; clc;

Nder = 3;

%% ---- Scenario SC --------------------------------------------
genssiMultiExperiment('TumourSC', 'ExpCond3Exp_Known', 'TumourSC_3Exp');
genssiMain('TumourSC_3Exp', Nder);

%% ---- Scenario SC+Tr ----------------------------------------
genssiMultiExperiment('TumourSCTr', 'ExpCond3Exp_Known', 'TumourSCTr_3Exp');
genssiMain('TumourSCTr_3Exp', Nder);

%% ---- Scenario AC --------------------------------------------
genssiMain('TumourAC_3Exp', Nder);

%% ---- Scenario AC+Tr ----------------------------------------
genssiMultiExperiment('TumourACTr', 'ExpCond3Exp_Known', 'TumourACTr_3Exp');
genssiMain('TumourACTr_3Exp', Nder);