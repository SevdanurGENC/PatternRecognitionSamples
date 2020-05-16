clear all;
close all;
clc;

%% E Sikki %%

W1 = [-5.01, -8.12,	-3.68;
      -5.43, -3.48,	-3.54;
	   1.08, -5.52,	 1.66;
	   0.86, -3.78,	-4.11;
	  -2.67,  0.63,	 7.39;
       4.94,  3.29,	 2.08;
	  -2.51,  2.09,	-2.59;
 	  -2.25, -2.13,	-6.94;
	   5.56,  2.86,	-2.26;
	   1.03, -3.33,	 4.33; ]
   
nokta_w1 = [ -5.01,-5.43,1.08,0.86,-2.67,4.94,-2.51,-2.25,5.56,1.03;
    -8.12,-3.48,-5.52,-3.78,0.63,3.29,2.09,-2.13,2.86,-3.33;
    -3.68,-3.54,1.66,-4.11,7.39,2.08,-2.59,-6.94,-2.26,4.33; ];

figure;
plot3(nokta_w1(1,:),nokta_w1(2,:),nokta_w1(3,:),'*r'); 
   
W2 = [-0.91, -0.18,	-0.05;
       1.30, -2.06,	-3.53;
      -7.75, -4.54,	-0.95;
      -5.47,  0.50,	 3.92;
       6.14,  5.72,	-4.85;
       3.60,  1.26,  4.36;
       5.37, -4.63,	-3.65;
       7.18,  1.46,	-6.66;
      -7.39,  1.17,  6.30;
      -7.50, -6.32,	-0.31; ]
 
nokta_w2 = [ -0.91,1.30,-7.75,-5.47,6.14,3.60,5.37,7.18,-7.39,-7.50;
          -0.18,-2.06,-4.54,0.50,5.72,1.26,-4.63,1.46,1.17,-6.32;
          -0.05,-3.53,-0.95,3.92,-4.85,4.36,-3.65,-6.66,6.30,-0.31; ]
hold on;
plot3(nokta_w2(1,:),nokta_w2(2,:),nokta_w2(3,:),'*b');
  
W3 = [ 5.35,  2.26,  8.13;
       5.12,  3.22,	-2.66;
	  -1.34, -5.31,	-9.87;
       4.48,  3.42,	 5.19;
	   7.11,  2.39,  9.21;
       7.17,  4.33, -0.98;
	   5.75,  3.97,	 6.65;
       0.77,  0.27,	 2.41;
	   0.90, -0.43, -8.71;
	   3.52, -0.36,  6.43 ]

   
nokta_w3 = [ 5.35,5.12,-1.34,4.48,7.11,7.17,5.75,0.77,0.90,3.52;
             2.26,3.22,-5.31,3.42,2.39,4.33,3.97,0.27,-0.43,-0.36;
             8.13,-2.66,-9.87,5.19,9.21,-0.98,6.65,2.41,-8.71,6.43; ]      
      
hold on;
plot3(nokta_w3(1,:),nokta_w3(2,:),nokta_w3(3,:),'*g');
      
axis([-15 15 -15 15 -15 15]);
grid on; 

%% A Sikki %%

mW1 = mean(W1)
mW2 = mean(W2)
mW3 = mean(W3)

sigmaW1 = cov(W1)
sigmaW2 = cov(W2)
sigmaW3 = cov(W3)
  
%% B ve D Sikki %%

x1 = [1 2 1]';
x2 = [5 3 2]';
x3 = [0 0 0]';
x4 = [1 0 0]';
  
Wi1 = -0.5 * inv(sigmaW1)
wi1 = inv(sigmaW1)* mW1'
w01 = -0.5 * (sigmaW1') * inv(sigmaW1) * mW1' - 0.5*(log(det(sigmaW1))/log(exp(1)))
g1x1 = x1' * Wi1 * x1 + wi1' * x1 + w01 

Wi2 = -0.5 * inv(sigmaW2)
wi2 = inv(sigmaW2)* mW2'
w02 = -0.5 * (sigmaW2') * inv(sigmaW2) * mW2' - 0.5*(log(det(sigmaW2))/log(exp(1)))
g2x1 = x1' * Wi2 * x1 + wi2' * x1 + w02 

Wi3 = -0.5 * inv(sigmaW3)
wi3 = inv(sigmaW3)* mW3'
w03 = -0.5 * (sigmaW3') * inv(sigmaW3) * mW3' - 0.5*(log(det(sigmaW3))/log(exp(1)))
g3x1 = x1' * Wi3 * x1 + wi3' * x1 + w03
 
%%%%%%%%%%%%%%%%%%%%%%%
Wi1 = -0.5 * inv(sigmaW1)
wi1 = inv(sigmaW1)* mW1'
w01 = -0.5 * (sigmaW1') * inv(sigmaW1) * mW1' - 0.5*(log(det(sigmaW1))/log(exp(1)))
g1x2 = x2' * Wi1 * x2 + wi1' * x2 + w01 

Wi2 = -0.5 * inv(sigmaW2)
wi2 = inv(sigmaW2)* mW2'
w02 = -0.5 * (sigmaW2') * inv(sigmaW2) * mW2' - 0.5*(log(det(sigmaW2))/log(exp(1)))
g2x2 = x2' * Wi2 * x2 + wi2' * x2 + w02 

Wi3 = -0.5 * inv(sigmaW3)
wi3 = inv(sigmaW3)* mW3'
w03 = -0.5 * (sigmaW3') * inv(sigmaW3) * mW3' - 0.5*(log(det(sigmaW3))/log(exp(1)))
g3x2 = x2' * Wi3 * x2 + wi3' * x2 + w03

%%%%%%%%%%%%%%%%%%%%%%%
Wi1 = -0.5 * inv(sigmaW1)
wi1 = inv(sigmaW1)* mW1'
w01 = -0.5 * (sigmaW1') * inv(sigmaW1) * mW1' - 0.5*(log(det(sigmaW1))/log(exp(1)))
g1x3 = x3' * Wi1 * x3 + wi1' * x3 + w01 

Wi2 = -0.5 * inv(sigmaW2)
wi2 = inv(sigmaW2)* mW2'
w02 = -0.5 * (sigmaW2') * inv(sigmaW2) * mW2' - 0.5*(log(det(sigmaW2))/log(exp(1)))
g2x3 = x3' * Wi2 * x3 + wi2' * x3 + w02 

Wi3 = -0.5 * inv(sigmaW3)
wi3 = inv(sigmaW3)* mW3'
w03 = -0.5 * (sigmaW3') * inv(sigmaW3) * mW3' - 0.5*(log(det(sigmaW3))/log(exp(1)))
g3x3 = x3' * Wi3 * x3 + wi3' * x3 + w03
 
%%%%%%%%%%%%%%%%%%%%%%%
Wi1 = -0.5 * inv(sigmaW1)
wi1 = inv(sigmaW1)* mW1'
w01 = -0.5 * (sigmaW1') * inv(sigmaW1) * mW1' - 0.5*(log(det(sigmaW1))/log(exp(1)))
g1x4 = x4' * Wi1 * x4 + wi1' * x4 + w01 

Wi2 = -0.5 * inv(sigmaW2)
wi2 = inv(sigmaW2)* mW2'
w02 = -0.5 * (sigmaW2') * inv(sigmaW2) * mW2' - 0.5*(log(det(sigmaW2))/log(exp(1)))
g2x4 = x4' * Wi2 * x4 + wi2' * x4 + w02 

Wi3 = -0.5 * inv(sigmaW3)
wi3 = inv(sigmaW3)* mW3'
w03 = -0.5 * (sigmaW3') * inv(sigmaW3) * mW3' - 0.5*(log(det(sigmaW3))/log(exp(1)))
g3x4 = x4' * Wi3 * x4 + wi3' * x4 + w03
 

%% C Sikki %%

W = [-5.01, -8.12,	-3.68;
      -5.43, -3.48,	-3.54;
	   1.08, -5.52,	 1.66;
	   0.86, -3.78,	-4.11;
	  -2.67,  0.63,	 7.39;
       4.94,  3.29,	 2.08;
	  -2.51,  2.09,	-2.59;
 	  -2.25, -2.13,	-6.94;
	   5.56,  2.86,	-2.26;
	   1.03, -3.33,	 4.33; 
      -0.91, -0.18, -0.05;
       1.30, -2.06,	-3.53;
      -7.75, -4.54,	-0.95;
      -5.47,  0.50,	 3.92;
       6.14,  5.72,	-4.85;
       3.60,  1.26,  4.36;
       5.37, -4.63,	-3.65;
       7.18,  1.46,	-6.66;
      -7.39,  1.17,  6.30;
      -7.50, -6.32,	-0.31;
       5.35,  2.26,  8.13;
       5.12,  3.22,	-2.66;
	  -1.34, -5.31,	-9.87;
       4.48,  3.42,	 5.19;
	   7.11,  2.39,  9.21;
       7.17,  4.33, -0.98;
	   5.75,  3.97,	 6.65;
       0.77,  0.27,	 2.41;
	   0.90, -0.43, -8.71;
	   3.52, -0.36,  6.43 ]

knn = 3; 

c1 = [1 2 1];
c2 = [5 3 2];
c3 = [0 0 0];
c4 = [1 0 0];  
 
axis([-5 15 -10 10]);
axis equal; 
hold on;
  
plot3(c1(1,1),c1(1,2),c1(1,3),'rX');
plot3(c2(1,1),c2(1,2),c2(1,3),'rX');
plot3(c3(1,1),c3(1,2),c3(1,3),'rX');
plot3(c4(1,1),c4(1,2),c4(1,3),'rX');
 

for i=1:30
    plot3(W(i,1),W(i,2),W(i,3),'rO');  
    
    distanceX1(i)=norm(c1(1,:)- W(i,:));
    distanceX2(i)=norm(c2(1,:)- W(i,:));
    distanceX3(i)=norm(c3(1,:)- W(i,:));
    distanceX4(i)=norm(c4(1,:)- W(i,:));
end;
 
  [xd1,id1] = sort(distanceX1); 
  [xd2,id2] = sort(distanceX2); 
  [xd3,id3] = sort(distanceX3);
  [xd4,id4] = sort(distanceX4);  
 
 
for i=1:knn
  plot3([c1(1,1) W(id1(i),1)],[c1(1,2) W(id1(i),2)], [c1(1,3) W(id1(i),3)],'b:');
  plot3([c2(1,1) W(id2(i),1)],[c2(1,2) W(id2(i),2)], [c2(1,3) W(id2(i),3)],'b:');
  plot3([c3(1,1) W(id3(i),1)],[c3(1,2) W(id3(i),2)], [c3(1,3) W(id3(i),3)],'b:');
  plot3([c4(1,1) W(id4(i),1)],[c4(1,2) W(id4(i),2)], [c4(1,3) W(id4(i),3)],'b:');
 
end;




