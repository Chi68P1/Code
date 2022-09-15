clear all
clc

syms t1 t2 l1 l2 l3 l4 l5 ;
T1 = [1 0 0 0; 0 1 0 0; 0 0 1 l1; 0 0 0 1];
R1 = [cos(t1) -sin(t1) 0 0; sin(t1) cos(t1) 0 0; 0 0 1 0; 0 0 0 1];
T2 = [1 0 0 l2; 0 1 0 l3; 0 0 1 0; 0 0 0 1];
R2 = [cos(-t2) 0 sin(-t2) 0; 0 1 0 0; -sin(-t2) 0 cos(-t2) 0; 0 0 0 1];
T3 = [1 0 0 l4; 0 1 0 0; 0 0 1 l5; 0 0 0 1];
P = [0; 0; 0; 1];
simplify(T1*R1*T2*R2*T3*P)

syms t1 t2   pi;
l1=30; l2=20; l3=5; l4=30; l5=20; 
for t1=0:0.2:2*pi
    for t2=0:0.2:pi
        x = l2*cos(t1) - l3*sin(t1) + l4*cos(t1)*cos(t2) - l5*cos(t1)*sin(t2);
        y = l3*cos(t1) + l2*sin(t1) + l4*cos(t2)*sin(t1) - l5*sin(t1)*sin(t2);
        z = l1 + l5*cos(t2) + l4*sin(t2);
        plot3(x,y,z,'*');
        hold on
    end
end

