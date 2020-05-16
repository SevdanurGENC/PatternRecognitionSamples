%% C Sikki %%

clear all;
close all;
clc;  

x = [ 8 4; 6 4; 7 5; 7 3; 10 -2; 4 -2; 7 -1; 7 -3;]
c1 = [7,0]
c2 = [0,1]

axis([-5 15 -10 10]);
axis equal; 
hold on;

plot(c1(1,1),c1(1,2),'X');
plot(c2(1,1),c2(1,2),'X');
for i=1:8;
    plot(x(i,1),x(i,2),'O');
end;

for i=1:8;
    plot([c1(1,1) x(i+5*(1-1),1)] , [c1(1,2) x(i+5*(1-1),2)],'r:');
    plot([c2(1,1) x(i+5*(1-1),1)] , [c2(1,2) x(i+5*(1-1),2)],'r:');
end;

