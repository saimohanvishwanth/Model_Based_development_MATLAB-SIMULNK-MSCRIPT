M= 1000;
b = 40;
r = 20;
S = tf('s');
Plant_Tf = 1/(M*S+b);
%% allocating kp
kp = 100;
Controller= pid(kp);
Tf_Closedloop = feedback(Controller*Plant_Tf,1);

%% use kp equal to 1000 & reference speed of 10m/sec
t = 1:0.1:20;%% array time stats zero ends with 20 with step time 0.1
step(r*Tf_Closedloop,t)
axis([0 20 0 10])
