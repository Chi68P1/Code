clear all
clc

%syms l1 l2 l3 l4 l5 t4 t6 t5 pi;
%T1 = [1 0 0 0; 0 1 0 0; 0 0 1 l1; 0 0 0 1];
%T2 = [1 0 0 0; 0 1 0 l2; 0 0 1 0; 0 0 0 1];
%T3 = [1 0 0 l3; 0 1 0 0; 0 0 1 0; 0 0 0 1];
%R1 = [cos(t4) -sin(t4) 0 0; sin(t4) cos(t4) 0 0; 0 0 1 0; 0 0 0 1];
%T4 = [1 0 0 0; 0 1 0 0; 0 0 1 l4; 0 0 0 1];
%R2 = [cos(t6) 0 sin(t6) 0; 0 1 0 0; -sin(t6) 0 cos(t6) 0; 0 0 0 1];
%R3 = [cos(t5) -sin(t5) 0 0; sin(t5) cos(t5) 0 0; 0 0 1 0; 0 0 0 1];
%T5 = [1 0 0 0; 0 1 0 0; 0 0 1 l5; 0 0 0 1];
%P = [0; 0; 0; 1];

%simplify(T1*T2*T3*R1*T4*R2*R3*T5*P)
syms t4 t5 t6 pi;
l1=50; l2=30; l3=40; l4=20; l5=20;
for t4=0:0.1:pi/2
    for t6=0:0.2:pi/2
        for t5=0:0.2:pi/2
            x= l3 + l5*cos(t4)*sin(t6);
            y= l2 + l5*sin(t4)*sin(t6);
            z= l1 + l4 + l5*cos(t6);
            plot3(x,y,z,'*');
            hold on   
        end
    end
end


