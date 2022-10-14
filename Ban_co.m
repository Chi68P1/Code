syms t pi;
 l=300; l2=250; l3 =200;
 r=10;n=3; 
 syms i j;


subplot(2,2,1);
rectangle('Position',[0 0 100 100]);
rectangle('Position',[0 100 100 100]);
rectangle('Position',[0 200 100 100]);
rectangle('Position',[100 0 100 100]);
rectangle('Position',[200 0 100 100]);
rectangle('Position',[100 100 100 100]);
rectangle('Position',[200 200 100 100]);
rectangle('Position',[200 100 100 100]);
rectangle('Position',[100 200 100 100]);
    
for i=1:1:3 
    for j = 1: 1: 3
        for t=0:0.05:2*pi
    
   
    
            X0=(l/n)*(i-0.5);
            Y0=(l/n)*(j-0.5);
    
            x = X0+(10*cos(t));
            y = Y0+(10*sin(t)); 
    
            C2= (y^2+x^2-l2^2-l3^2)/(2*l2*l3);
            S2 = sqrt(abs(1-(C2)^2)); 

            t2=atan2(S2,C2);

            S1=(x)*(l2+l3*C2)+((y)*l3*S2);
            C1 = (-y)*(l2+l3*C2)+((x)*l3*S2);
            t1=atan2(S1,C1);

            Px = +l2*sin(t1)+l3*(sin(t1+t2));
            Py = -l2*cos(t1)-l3*(cos(t1+t2));
            %Pz=0;




            subplot(2,2,1);
            plot(Px,Py,'*b');
            pause(0.01);
            hold on



        end
    end
end

for i=1:1:3 
    for j = 1: 1: 3
        for t=-1:0.05:1
    
            X0=(l/n)*(i-0.5);
            Y0=(l/n)*(j-0.5);

            x = X0+10*t;
            y = Y0+10*t; 
            z = 0;

            C2= (y^2+x^2-l2^2-l3^2)/(2*l2*l3);
            S2 = sqrt(abs(1-(C2)^2)); 

            t2=atan2(S2,C2);

            S1=(x)*(l2+l3*C2)+((y)*l3*S2);
            C1 = (-y)*(l2+l3*C2)+((x)*l3*S2);
            t1=atan2(S1,C1);

            Px = +l2*sin(t1)+l3*(sin(t1+t2));
            Py = -l2*cos(t1)-l3*(cos(t1+t2));
            Pz=0;

            subplot(2,2,1);
            plot(Px,Py,'*r');
            pause(0.01);
            hold on
        end
        for t=-1:0.05:1

            X0=(l/n)*(i-0.5);
            Y0=(l/n)*(j-0.5);

            x = X0+10*t;
            y = Y0-10*t; 
            z = 0;

            C2= (y^2+x^2-l2^2-l3^2)/(2*l2*l3);
            S2 = sqrt(abs(1-(C2)^2)); 
            t2=atan2(S2,C2);

            S1=(x)*(l2+l3*C2)+((y)*l3*S2);
            C1 = (-y)*(l2+l3*C2)+((x)*l3*S2);
            t1=atan2(S1,C1);

            Px = +l2*sin(t1)+l3*(sin(t1+t2));
            Py = -l2*cos(t1)-l3*(cos(t1+t2));
            Pz=0;

            %subplot(2,2,1);
            %plot(X,Y,'*r');
            grid on
            %pause(0.01);


            subplot(2,2,1);
            plot(Px,Py,'*r');
            pause(0.01);
            hold on

        end
    end
end

