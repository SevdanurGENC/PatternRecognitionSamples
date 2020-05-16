clear all;
close all;
clc;

x = [ 8 4; 6 4; 7 5; 7 3;  
      10 -2; 4 -2; 7 -1; 7 -3;] 

varyans = 1;
c = [x(1,:); x(2,:); x(5,:); x(6,:)]

axis([0 15 -10 10]);
hold on;
for i=1:4;
    plot(x(i,1),x(i,2),'o');
    y(i)=0;
end; 
for i=5:8 ;
    plot(x(i,1),x(i,2),'x');
    y(i)=1; 
end;

for i=1:8;
    phi1(i) = exp(- ((x(i,1)-c(1,1))^2 + (x(i,2)-c(1,2))^2 )/2 * varyans^2 );
    phi2(i) = exp(- ((x(i,1)-c(2,1))^2 + (x(i,2)-c(2,2))^2 )/2 * varyans^2 ); 
    phi3(i) = exp(- ((x(i,1)-c(3,1))^2 + (x(i,2)-c(3,2))^2 )/2 * varyans^2 );
    phi4(i) = exp(- ((x(i,1)-c(4,1))^2 + (x(i,2)-c(4,2))^2 )/2 * varyans^2 );
end;

 P = [phi1' phi2' phi3' phi4']
 w = inv(P'*P )*P'*y'; 
 ty = sign(P*w);
  
  for i=1:64;
     for j=1:64;
         x1(i,j)=i/64;
         y1(i,j)=j/64;
         p1 = exp(- ((x1(i,j)-c(1,1))^2 + (y1(i,j)-c(1,2))^2)/2 * varyans^2 );
         p2 = exp(- ((x1(i,j)-c(2,1))^2 + (y1(i,j)-c(2,2))^2)/2 * varyans^2 );
         p3 = exp(- ((x1(i,j)-c(3,1))^2 + (y1(i,j)-c(3,2))^2)/2 * varyans^2 );
         p4 = exp(- ((x1(i,j)-c(4,1))^2 + (y1(i,j)-c(4,2))^2)/2 * varyans^2 );
         z(i,j)= w(1)*p1 + w(2)*p2 + w(3)*p3 + w(4)*p4;
     end;
 end;
   
 contour(x1,y1,z, [0 -10])