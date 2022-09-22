syms l1 l2 t1 t2 t pi;

l1=50; l2=50;
for t=0:0.05:2*pi
    x = 16*(sin(t)^3);
    y = 13*cos(t) - 5*cos(2*t) - 2*cos(3*t) - cos(4*t);
    c2 = (x^2+y^2-l1^2-l2^2)/(2*l1*l2);
    s2 = sqrt(abs(1-c2^2));
    t2 = atan2(s2,c2);
    c1 = x*(l1+l2*c2)+l2*s2*y;
    s1 = y*(l1+l2*c2)-l2*s2*x;
    t1 = atan2(s1,c1);
    Px = l1*cos(t1)+l2*cos(t1+t2);
    Py = l1*sin(t1)+l2*sin(t1+t2);
    
    %{subplot(2,1,1);
    %plot(t,t1*180/pi,'*',t,t2*180/pi,'o');pause(0.1);
    %xlabel('t');
    %ylabel('Rotation');
    %hold on 
    %subplot(2,1,2);
    plot(Px,Py,'*');pause(0.1);
    xlabel('x (cm)');
    ylabel('y (cm)');
    hold on
    
end
