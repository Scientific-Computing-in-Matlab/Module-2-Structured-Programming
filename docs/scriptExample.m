%% A script that generates the figures for the paper
%  BK - 1/18/2023


%% Preparation
% Definitions  (windows, conditions)
% "Load" necessary data
spikeRate       = 0.1;
nrTimeBins      = 10;
nrTrials        = 20;
% Generate (fake) data
spikes          = poissrnd(spikeRate,[nrTrials nrTimeBins ]); % Assuming poisson firing

%% Show a spike raster
subplot(2,1,1)
imagesc(spikes)
xlabel('Time Bin');
ylabel('Trial');

%% Determine the mean firing rate per bin
meanRate = mean(spikes);
subplot(2,1,2)
plot(1:nrTimeBins,meanRate)
xlabel 'Time'
ylabel 'Mean #Spikes'






