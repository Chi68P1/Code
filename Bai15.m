clear all
clc

syms t pi;
l1=40; l2=50; l3 =40;
for t=0:0.01:1
    
    x=40*t+30;
    y=40*t+30;
    z=30;
    
    t1=atan((-x)/y);
    
    C3=((x/-sin(t1))^2+(z-l1)^2-l2^2-l3^2)/(2*l2*l3);
    S3 = sqrt(abs(1-(C3)^2));
    
    C2=((-x/sin(t1))*(l2+l3*C3)+(z-l1)*l3*S3)/((l2+l3*C3)^2+((l3^2)*(S3^2)));
    S2 = ((x/sin(t1))*l3*S3+(z-l1)*(l2+l3*C3))/((l2+l3*C3)^2+((l3^2)*(S3^2)));
    t2=atan2(S2,C2);
    
    C3=((-x/sin(t1))^2+(z-l1)^2-l2^2-l3^2)/(2*l2*l3);
    S3 = sqrt(1-(C3)^2);
    t3 = atan2(S3,C3);
    
    Px = -sin(t1)*(l2*cos(t2)+l3*cos(t2+t3));
    Py = cos(t1)*(l2*cos(t2)+l3*cos(t2+t3));
    Pz = l1+l2*sin(t2)+l3*sin(t2+t3);
    
   % subplot(2,2,1);
    plot3(Px,Py,Pz,'*');
    grid on
    pause(0.01);
    hold on
   
   % subplot(2,2,2);
    %plot(t,t1*180/pi,'r*');
   % grid on
   % pause(0.01);
   % hold on
    
   % subplot(2,2,3);
  %  plot(t,t2*180/pi,'r*');
  %  grid on
   % pause(0.01);
  %  hold on
    
   % subplot(2,2,4);
   % plot(t,t3*180/pi,'r*');
   % grid on
   % pause(0.01);
   % hold on
    
end