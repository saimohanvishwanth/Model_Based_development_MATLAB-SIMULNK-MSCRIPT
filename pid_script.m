%% allocating parameters of Transfer function
M = 1000;
S = tf('s');
b = 20;
r =10;
Transfer_Fn = 1/M*S +b;

%% parameterising pid controllers

Kp = 100;
ki = 30;
kd = 50;
Controller_name = pid(Kp,Ki,Kd);
Clossed_loop = feedback(Controller_name,Transfer_Fn,1);
 %% Now plot the above plant model 
t= 0: 0.1:20;
step(r*Tf_Closedloop,t);
axis([0 50 0 30 ])


