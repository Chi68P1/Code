clear all
clc

syms l1 l2 t1 t2 t pi;

R =100; b =10; p =10;

for t=0:0.1:10*pi
    x = (R-b)*cos(t);
    y = (R-b)*sin(t);
    z = p*t;
    t1 = atan2(-x,y);
    l1 = z;
    l2 = sqrt(x^2+y^2); 
    Px = -sin(t1)*l2;
    Py = cos(t1)*l2;
    Pz = l1;

    subplot(2,2,1);
    plot(t,t1*180/pi,'*');pause(0.1);
    xlabel('t');
    ylabel('Rotation');
    hold on 
    subplot(2,2,2);
    plot(t,l1,'*');pause(0.1);
    xlabel('x (cm)');
    ylabel('y (cm)');
    hold on
    subplot(2,2,3);
    plot(t,l2*180/pi,'*');pause(0.1);
    xlabel('t');
    ylabel('Rotation');
    hold on 
    subplot(2,2,4);
    plot3(Px,Py,Pz,'*');pause(0.1);
    xlabel('x (cm)');
    ylabel('y (cm)');
    hold on
    
end
