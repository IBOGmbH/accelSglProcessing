clc; clear; close all;

T = readtable('pilot03.csv');
display(T(1:5,5))
rawData = T.accZ(:);
rawDataCentered = rawData - mean(rawData);
rawDataCenteredSqured = rawDataCentered.^2;
hold on
plot(rawDataCenteredSqured)
hold on
filteredData = movmean(rawDataCenteredSqured,300);
hold on
plot(filteredData)
figure
plot(rawDataCenteredSqured/max(rawDataCenteredSqured))
hold on
plot(filteredData>300)

%%Made for Naveen 

% 
% clc; clear; close all;
% 
% T = readtable('Z diff Pilot 2 Feb 28th.csv');
% display(T(1:5,5))
% rawData = T.diff(:);
% 
% %%Up to here, it's just data acquisition
% rawDataCentered = rawData - mean(rawData);%the mean is substracted to center the data
% plot(rawDataCentered)%Plotting to check
% hold on%Plotting to check
% filteredData = movmean(rawDataCentered,15);%Applies a moving mean of a 15 element window
% hold on %Plotting to check
% plot(filteredData)%Plotting to check
% hold on%Plotting to check
% % plot(rawDataCenteredSqured/max(rawDataCenteredSqured))
% % hold on
% plot((filteredData>0)*150)%Plotting the the value bigger than 0 (threshold arbitrarly defined to suit our application)
