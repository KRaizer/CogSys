%from: The Rescorla-Wagner Model , Simplified

clear all;close all; clc;

deltaV=0; %amount of learning, change in delta of a stimulus V
alpha=1; %salience of the CS
beta=1; %speed of learning for a given US
gama=1; %what actually happens. By convention is usu- ally set to a value of 1 when the US is present, and 0 when it is absent.
sigmaV=0; %what you expect

deltaV=alpha*beta*(gama-sigmaV);




%% Blocking
% Blocking occurs when a novel stimulus (because it is novel it has no predictive value) is presented together with a well-established CS (whose predictive value is essentially equal to ?, that is, 1).

alpha=1;
beta=1;
gama=1;
sigmaV=1+0;

deltaV=alpha*beta*(gama-sigmaV)

%Now, if when the novel stimulus is added, the size of the US is increased, the predic- tive values of both the original CS and of the novel stimulus will increase, because surprise occurs

alpha=1;
beta=1;
gama=2;
sigmaV=1+0;

deltaV=alpha*beta*(gama-sigmaV)

