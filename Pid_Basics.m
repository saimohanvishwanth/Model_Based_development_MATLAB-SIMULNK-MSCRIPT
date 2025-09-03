%% first simulation
 sim_time = 7;
 step_value = 1;
 M=1;
 b =10;
 k = 20;
 %% define the pid parameters

 kp= 0;
 ki = 0;
 kd = 0;
 sim("Pid_Basic.slx")

 %% pid controller

 kp = 350;
 ki = 300;
 kd = 50;

 %% plotting section

 figure
 plt(IN.time, IN.data)
 hold all
 plt(OUT.time,OUT.data)

