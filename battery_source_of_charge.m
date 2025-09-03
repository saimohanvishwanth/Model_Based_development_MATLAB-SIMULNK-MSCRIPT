%% Load the data
Data = xlsread("Battery_Parameters.xlsx")

%% Name the data
SOC = Data(:,1);
OCV = Data(:,2);
R_Charge = Data(:,3);
R_Discharge = Data(:,4);

%% Plotting the graph
plot(SOC,OCV);
plot(SOC,R_Charge);
plot(SOC,R_Discharge);

%% define variables

I= 2.3
Cn=2.3 *3600 %% capacity
descrete_time = 3600; %% to see in terms of secs

%% 
sim("Battery_SOC.slx")



