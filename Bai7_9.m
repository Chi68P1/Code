clear all
clc
syms t1 t2 t3 l1 l2 l3 l4 l5 l6 l7;
T1=[1 0 0 0; 0 1 0 0; 0 0 1 l1; 0 0 0 1];
P1=[cos(t1) -sin(t1) 0 0; sin(t1) cos(t1) 0 0; 0 0 1 0; 0 0 0 1];
T2=[1 0 0 0; 0 1 0 0; 0 0 1 l2; 0 0 0 1];
T3=[1 0 0 0; 0 1 0 l4; 0 0 1 0; 0 0 0 1];
P2=[cos(t2) -sin(t2) 0 0; sin(t2) cos(t2) 0 0; 0 0 1 0; 0 0 0 1];
T4=[1 0 0 0; 0 1 0 0; 0 0 1 l3; 0 0 0 1];
T5=[1 0 0 l5; 0 1 0 0; 0 0 1 0; 0 0 0 1];
T6=[1 0 0 0; 0 1 0 0; 0 0 1 -l6; 0 0 0 1];
P3=[cos(t3) -sin(t3) 0 0; sin(t3) cos(t3) 0 0; 0 0 1 0; 0 0 0 1];
T7=[1 0 0 0; 0 1 0 0; 0 0 1 -l7; 0 0 0 1];
P=[0; 0; 0; 1];
simplify(T1*P1*T2*T3*P2*T4*T5*T6*P3*T7*P)

syms t1 t2 t3 pi;
l1=50; l2=10; l3=10; l4=40; l5=30; l6=20; l7=20; s=10;
for t1=0:0.1:pi/2
    for t2=0:0.1:pi/2
        for t3=0:0.1:pi/2
            x=  l5*cos(t1 + t2) - l4*sin(t1);
            y=  l5*sin(t1 + t2) + l4*cos(t1);
            z= l1 + l2 + l3 - l6 - l7 - s;
            plot3(x,y,z,'*');
            hold on   
        end
    end
end
