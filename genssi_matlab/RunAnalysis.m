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

%% ---- 2 serie temporali -------------------------------------

%% ---- Scenario SC
genssiMultiExperiment('TumourSC', 'ExpCond2Exp_Known', 'TumourSC_2Exp');
genssiMain('TumourSC_2Exp', Nder);

%% ---- Scenario SC+Tr
genssiMultiExperiment('TumourSCTr', 'ExpCond2Exp_Known', 'TumourSCTr_2Exp');
genssiMain('TumourSCTr_2Exp', Nder);

%% ---- Scenario AC
genssiMultiExperiment('TumourAC', 'ExpCond2Exp_Known', 'TumourAC_2Exp');
genssiMain('TumourAC_2Exp', Nder);

%% ---- Scenario AC+Tr
genssiMultiExperiment('TumourACTr', 'ExpCond2Exp_Known', 'TumourACTr_2Exp');
genssiMain('TumourACTr_2Exp', Nder);

%% ---- 1 serie temporale -------------------------------------

%% ---- Scenario SC
genssiMultiExperiment('TumourSC', 'ExpCond1Exp_Known', 'TumourSC_1Exp');
genssiMain('TumourSC_1Exp', Nder);

%% ---- Scenario SC+Tr
genssiMultiExperiment('TumourSCTr', 'ExpCond1Exp_Known', 'TumourSCTr_1Exp');
genssiMain('TumourSCTr_1Exp', Nder);

%% ---- Scenario AC
genssiMultiExperiment('TumourAC', 'ExpCond1Exp_Unknown', 'TumourAC_1Exp');
genssiMain('TumourAC_1Exp', Nder);

%% ---- Scenario AC+Tr
genssiMultiExperiment('TumourACTr', 'ExpCond1Exp_Known', 'TumourACTr_1Exp');
genssiMain('TumourACTr_1Exp', Nder);