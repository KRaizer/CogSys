%% This is an exmaple of pathfinding for the sample problem posed at: http://people.revoledu.com/kardi/tutorial/ReinforcementLearning/Modeling-Environment.htm

clear all;close all; clc;

    % Two input: R and gamma
    % immediate reward matrix; 
    % row(depart) and column(target) = states; -Inf = no door between room

   %The goal room is F, so the doors that lead immediately to the goal have instant reward of 100 
   %   A        B       C       D       E       F
   R=[ -inf,   -inf,   -inf,   -inf,    0,      -inf;
        -inf,   -inf,   -inf,   0,      -inf,   100;
        -inf,   -inf,   -inf,   0,      -inf,   -inf;
        -inf,   0,      0,      -inf,   0,      -inf;
        0,      -inf,   -inf,   0,      -inf,   100;
        -inf,   0,      -inf,   -inf,   0,      100];
labels=['A' 'B' 'C' 'D' 'E' 'F'];
gamma=0.80;            % learning parameter
nEpisodes=5000;
[A episode]=ReinforcementLearning(R,nEpisodes,gamma);
adj=(A>0);

%# plot adjacency matrix
subplot(121), spy(adj)
title('Adjacency matrix');
%# plot connected points on grid
X=[1 2 3.5 2 1 1.5]';
Y=[2 2 1.5 1 1 1.5]';
[xx yy] = gplot(adj, [X Y]);
subplot(122), plot(xx, yy, 'ks-', 'MarkerFaceColor','r')
title('Graph');
axis([0.5 4 0.5 2.5])
dx=0.1;dy=0.1;

for j=1:length(labels)
    text(X(j)+dx,Y(j)+dy,labels(j))
end


%% Find path
initial=3;  %C
goal=6;     %F

foundPath=false;
current=initial;

index=1;
pathPlan(index)=current;
while(not(foundPath))
    [val current]=max(A(current,:));
    index=index+1;
    pathPlan(index)=current;
    if(current==goal)
        foundPath=true;
    end
end
disp('Path:')
for j=1:length(pathPlan)
   disp(sprintf('%c',labels(pathPlan(j))))
end
