% Pure Pursuit Model Initialization
%
% Copyright 2020 The MathWorks, Inc.

%% add Image to the path
addpath(genpath('Images'));

%% load the scene data file generated from Driving Scenario Designer
load('curveHighVel.mat');

%% define reference points
refPose = data.ActorSpecifications.Waypoints;
xRef = refPose(:,1);
yRef = -refPose(:,2);

%% define reference time for plotting 
Ts = 18; % simulation time
s = size(xRef);
tRef = (linspace(0,Ts,s(1)))'; % this time variable is used in the "2D Visulaization" for plotting the refernce points

%% define parameters used in the models
L = 3; % bicycle length
ld = 7; % lookahead distance
X_o = refPose(1,1); % initial vehicle position
Y_o = -refPose(1,2); % initial vehicle position 
psi_o = 0; % initial yaw angle

%% define data for velocity lookup table
lookUpt = readmatrix('velocityDistribution.xlsx');
xlt = lookUpt(2:30,1);
ylt = lookUpt(1,2:20);
vel = lookUpt(2:30,2:20);