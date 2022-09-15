clear all
clc
syms t1 t2 t3 t4 l1 l2 l3 l4 l5 l6 l7 l8;
R1=[cos(t1) -sin(t1) 0  0; sin(t1) cos(t1) 0 0; 0 0 1 0; 0 0 0 1];
T1=[1 0 0 0; 0 1 0 0; 0 0 1 l1; 0 0 0 1];
T2=[1 0 0 l2; 0 1 0 0; 0 0 1 0; 0 0 0 1];
R2=[cos(t2) 0 sin(t2) 0; 0 1 0 0; -sin(t2) 0 cos(t2) 0; 0 0 0 1];
T3=[1 0 0 0; 0 1 0 l3; 0 0 1 0; 0 0 0 1];
T4=[1 0 0 l4; 0 1 0 0; 0 0 1 0; 0 0 0 1];
R3=[cos(t3) -sin(t4) 0 0; sin(t3) cos(t3) 0 0; 0 0 1 0; 0 0 0 1];
T5=[1 0 0 0; 0 1 0 -l8; 0 0 1 0; 0 0 0 1];
T6=[1 0 0 l5; 0 1 0 0; 0 0 1 0; 0 0 0 1];
R4=[cos(t4) 0 -sin(t4) 0; 0 1 0 0; sin(t4) 0 cos(t4) 0; 0 0 0 1];
T7=[1 0 0 0; 0 1 0 l6; 0 0 1 0; 0 0 0 1];
T8=[1 0 0 l7; 0 1 0 0; 0 0 1 0; 0 0 0 1];
P=[0; 0; 0; 1];
simplify(R1*T1*T2*R2*T3*T4*R3*T5*T6*R4*T7*T8*P)

syms t1 t2 t3 t4 pi;
l1=50; l2=50; l3=30; l4=30; l5=20; l6=10; l7=30; l8=10;
for t1=0:0.1:pi/2
    for t2=0:0.1:pi/2
        for t3=0:0.1:pi/2
            for t4=0:0.1:pi/2
              x= l8*(cos(t3)*sin(t1) + cos(t1)*cos(t2)*sin(t4)) - l6*(cos(t3)*sin(t1) + cos(t1)*cos(t2)*sin(t4)) - l5*(sin(t1)*sin(t3) - cos(t1)*cos(t2)*cos(t3)) + l2*cos(t1) - l3*sin(t1) - l7*(cos(t4)*(sin(t1)*sin(t3) - cos(t1)*cos(t2)*cos(t3)) - cos(t1)*sin(t2)*sin(t4)) + l4*cos(t1)*cos(t2);
              y=  l5*(cos(t1)*sin(t3) + cos(t2)*cos(t3)*sin(t1)) + l6*(cos(t1)*cos(t3) - cos(t2)*sin(t1)*sin(t4)) - l8*(cos(t1)*cos(t3) - cos(t2)*sin(t1)*sin(t4)) + l3*cos(t1) + l2*sin(t1) + l7*(cos(t4)*(cos(t1)*sin(t3) + cos(t2)*cos(t3)*sin(t1)) + sin(t1)*sin(t2)*sin(t4)) + l4*cos(t2)*sin(t1);
              z=  l1 + l7*(cos(t2)*sin(t4) - cos(t3)*cos(t4)*sin(t2)) - l4*sin(t2) - l5*cos(t3)*sin(t2) + l6*sin(t2)*sin(t4) - l8*sin(t2)*sin(t4);
              plot3(x,y,z,'*');
              hold on  
            end
        end
    end
end