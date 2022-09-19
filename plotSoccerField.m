% Script for plotting the Soccer field over the Robot Visualizer
%
% Copyright 2019 The MathWorks, Inc.

% Find the figure number to start plotting over
obj = findobj('Tag','MultiRobotEnvironment');
figNum = obj.Number;
figure(figNum);
hold on

% Title
title('Robot Soccer -- Group 7');

% Center Line
line([45 45], [0 60],'Color','k','LineWidth',2);

% Center circle
viscircles([45 30],7.5,'Color','k');

% Draw outer boundary
rectangle('Position', [0 0 90 60],'EdgeColor','k','LineWidth', 2, 'FaceColor',[0 0.6 0 0.5]); %playing field inside
rectangle('Position', [-10 -10 110 80],'EdgeColor','k','LineWidth',0.5); % playing field out of bounds


rectangle('Position', [ 0 5 20 50],'EdgeColor','k','LineWidth',2);% penalty area size
rectangle('Position', [ 70 5 20 50],'EdgeColor','k','LineWidth',2);% penalty area size

rectangle('Position', [ 0 15 10 30 ],'EdgeColor','k','LineWidth',2);% Goal area size
rectangle('Position', [ 80 15 10 30 ],'EdgeColor','k','LineWidth',2);% Goal area size

rectangle('Position', [ 0 12 0 30 ],'EdgeColor','k','LineWidth',2);% Goal depth
rectangle('Position', [ -6 16 6 28],'EdgeColor','k','LineWidth',2);
rectangle('Position', [ 90 16 6 28],'EdgeColor','k','LineWidth',2)

% Remove default labels and ticks
xlabel('');
ylabel('');
yticks('');
xticks('');

% Crop to field dimensions
axis equal
xlim([-10 100]);
ylim([-10 70]);
set(gca,'Color','w')
hold off


