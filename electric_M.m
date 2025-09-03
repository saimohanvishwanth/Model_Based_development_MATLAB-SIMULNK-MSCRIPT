%% Simulate DC Motor
V =1;
Kb = 0.0274; % V/rad/sec
J = 3.2284E-6; % kg.m^2
b = 3.5077E-6; % Nms
Kt = 0.0274; % Nm/ Amp
R = 4; %Ohm
L = 2.75E-6; %H
sim("electric_motor.slx")
