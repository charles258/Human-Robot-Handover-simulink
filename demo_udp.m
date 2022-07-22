comm=SLRTComm;
comm.ip = '127.0.0.1';
comm.timeout=20;
enbSSA = 1;
port =[8001 8104 8105 8106 8107 8108];
port2 = [8003 8004 8005];
port_num = size(port, 2);
for i = 1:port_num
    judp('send',port(i),comm.ip,int8(1));
end

msg=judp('receive',25001,56,obj.timeout*1000);
% Vm = [2 1 3 4 5 6];
% Am = 0.5;
% Jm = 0.2;
% judp('send',8003,comm.ip,typecast(single(Vm),'int8'));
% judp('send',8004,comm.ip,typecast(single(Vm),'int8'));
% judp('send',8005,comm.ip,typecast(single(Vm),'int8'));
% for i = 1:15
%     comm.startSTMO;
%     pause(0.2);
%     % comm.setRobotProperty(robot.nlink,robot.DH,robot.cap,robot.base,robot.ssa_margin);
%     % comm.setHumanProperty(HuCap,pre_HuCap,vel_t);
%     pause(0.1);
% %     comm.enableSSA(enbSSA);
%     judp('send',8105,comm.ip,int8(enbSSA));
%     enbSSA = 1 - enbSSA;
%     comm.endSTMO;
%     pause(0.2);
% end
% Vm = 2;
% Am = 0.5;
% Jm = 0.2;
% for i = 1:3
%     comm.getRobData;
%     comm.setVmAmJm(Vm,Am,Jm)
% end