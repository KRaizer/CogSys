clear all; close all; clc;



r_t=1;  %current reward value at time t
rc_t=1; %expected or predicted reward value
delta_t=1;  %discrepancy or error between those two
            %drives synaptic weigths
delta_t=r_t-rc_t;


%a single neural unit computing rc_t

w_t=[1 1 1]; %vector of synaptic weigths 
x_t=[1 1 1]; %vector of sensory inputs
rc_t=sum(w_t.*x_t);


%change in weigths values needed to improve the estimated reward is
epsilon=1; % ??????????
delta_t=1;
x_t=[1 1 1];

deltaW_t=epsilon*delta_t*x_t;



%% PVLV

%PV = Rescorla-Wagner
%LV = learn about reward associations for conditioned stimuli (CS)

