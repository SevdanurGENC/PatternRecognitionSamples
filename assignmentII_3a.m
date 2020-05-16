%% A Sikki %%

clear all;
close all;
clc;

W1 = [ 8,4; 6,4; 7,5; 7,3; ]
W2 = [ 10,-2; 4,-2; 7,-1; 7,-3;] 
x = [0,1]; 
varyans = 1;
 
for i=1:length(W1)
solutionA(i,1) = 1 / sqrt(2*pi) * exp(-((W1(i,1)- x(1,1))^2) / 2 * varyans^2);
solutionA(i,2) = 1 / sqrt(2*pi) * exp(-((W1(i,2)- x(1,2))^2) / 2 * varyans^2);
end

Cozum1 = solutionA(:,:) 

p=0;
for i=1:length(solutionA)
p = p + solutionA(i,:);
end

p / length(W1)

for i=1:length(W2)
solutionB(i,1) = 1 / sqrt(2*pi) * exp(-((W2(i,1)- x(1,1))^2) / 2 * varyans^2);
solutionB(i,2) = 1 / sqrt(2*pi) * exp(-((W2(i,2)- x(1,2))^2) / 2 * varyans^2);
end

Cozum2 = solutionB(:,:)
 
p=0;
for i=1:length(solutionB)
p = p + solutionB(i,:);
end

p / length(W2)
