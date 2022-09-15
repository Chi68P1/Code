clear all
clc
syms t1 t2 t4 l3 l4 l5 l6;
R1 = [cos(t1) -sin(t1) 0 0; sin(t1) cos(t1) 0 0; 0 0 1 0; 0 0 0 1];
T1 = [1 0 0 0; 0 1 0 0; 0 0 1 l3; 0 0 0 1];
R2 = [cos(-t2) 0 sin(-t2) 0; 0 1 0 0; -sin(-t2) 0 cos(-t2) 0; 0 0 0 1];
T2 = [1 0 0 (l4+l5); 0 1 0 0; 0 0 1 0; 0 0 0 1];
R3 = [cos(-t4) 0 sin(-t4) 0; 0 1 0 0; -sin(-t4) 0 cos(-t4) 0; 0 0 0 1];T3 = [1 0 0 0; 0 1 0 -l6; 0 0 1 0; 0 0 0 1];
T3 = [1 0 0 l6; 0 1 0 0; 0 0 1 0; 0 0 0 1];
P = [0; 0; 0; 1];
simplify(R1*T1*R2*T2*R3*T3*P)

l3=10; l4=15; l5=10; l6=10;
syms t1 t2 t4 pi;
for t1=0:0.2:pi/2
    for t2=0:0.2:pi/2
        for t4=0:0.1:pi /2 
            x = cos(t1)*(l6*cos(t2 + t4) + l4*cos(t2) + l5*cos(t2));
            y = sin(t1)*(l6*cos(t2 + t4) + l4*cos(t2) + l5*cos(t2));
            z =  l3 + sin(t2)*(l4 + l5) + l6*sin(t2 + t4);
            plot3(x,y,z,'*');
            hold on
        end
    end
end

