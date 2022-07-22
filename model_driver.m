comm.startSTMO;
comm.setRobotProperty(robot.nlink,robot.DH,robot.cap,robot.base,robot.ssa_margin);
comm.setHumanProperty(HuCap,pre_HuCap,vel_t);
comm.enableSSA(enbSSA);
comm.drvJntTraj(ref_traj, traj_hz, resample_hz, 0.1, replan_cnt);
judp('send',8106,comm.ip,int8(0));
judp('send',8106,comm.ip,int8(1));
msg=judp('receive',25001,56,comm.timeout*1000);