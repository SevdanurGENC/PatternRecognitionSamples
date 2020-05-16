%% B Sikki %%

clear all;
close all;
clc; 

x = [ 8 4; 6 4; 7 5; 7 3; 10 -2; 4 -2; 7 -1; 7 -3;]
knn = 3;
c1 = [0,1]

axis([-5 15 -10 10]);
axis equal; 
hold on;

plot(c1(1,1),c1(1,2),'rX');
for i=1:8
    plot(x(i,1),x(i,2),'rO');    
    distanceX(i)=norm(c1(1,:)- x(i,:));
end;

  [xd,id] = sort(distanceX); 

for i=1:knn
  plot([c1(1,1) x(id(i),1)],[c1(1,2) x(id(i),2)],'b:');
end;
