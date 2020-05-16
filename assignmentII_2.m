clear all;
close all;
clc;

W1 = [ 8,4; 6,4; 7,5; 7,3; ]
W2 = [ 10,-2; 4,-2; 7,-1; 7,-3;]

%% A Sikki %%

nokta_w1 = [ 8,6,7,7; 4,4,5,3; ];
figure;
plot(nokta_w1(1,:),nokta_w1(2,:),'*r'); 
nokta_w2 = [ 10,4,7,7; -2,-2,-1,-3;]
hold on;
plot(nokta_w2(1,:),nokta_w2(2,:),'*b');
axis([-15 15 -15 15 -15 15]);
grid on; 
 
%% B Sikki %%

ortalamaW1 = mean(W1)
ortalamaW2 = mean(W2) 

kovaryansW1 = cov(W1)
kovaryansW2 = cov(W2) 

%% C Sikki %%

E1 = [1/2 , 0; 0, 1/2];
E2 = [4.5, 0; 0 0.5];

Wb1 = - (1/2) * E1';
Wb2 = - (1/2) * E2';

wk1 = E1' * ortalamaW1(1,1);
wk2 = E2' * ortalamaW1(1,1);

wk10 = [- (1/2) * ortalamaW1(1,1)' * E1' * ortalamaW1(1,1)] - [ (1/2) * (log(det(E1)) + log(exp(1))) ];
wk20 = [- (1/2) * ortalamaW2(1,1)' * E2' * ortalamaW2(1,1)] - [ (1/2) * (log(det(E2)) + log(exp(1))) ];

for i=1:length(W1)
    G11 = W1(i,1)' * Wb1 * W1(i,1) + wk1' * W1(i,1) + wk10;
    G12 = W1(i,2)' * Wb1 * W1(i,2) + wk1' * W1(i,2) + wk10;
end

for i=1:length(W1)
    G21 = W2(i,1)' * Wb2 * W2(i,1) + wk2' * W2(i,1) + wk20;
    G22 = W2(i,2)' * Wb2 * W2(i,2) + wk2' * W2(i,2) + wk20;
end

%% D Sikki %%









%% E Sikki %%

prototype = [9,1]

for i=1:length(W1)
sonuc(i,:) = [(prototype(1,1) - W1(i,1))^2  + (prototype(1,2) - W1(i,2))^2];
end

NNMatrixW1 = sonuc(:,:)
vektorAraligi1 = min(NNMatrixW1)

for i=1:length(W2)
sonuc(i,:) = [(prototype(1,1) - W2(i,1))^2  + (prototype(1,2) - W2(i,2))^2];
end

NNMatrixW2 = sonuc(:,:)
vektorAraligi2 = min(NNMatrixW2)
 
prototype = [0,1]      %% 2.satir'a ait.

for i=1:length(W1)
sonuc(i,:) = [(prototype(1,1) - W1(i,1))^2  + (prototype(1,2) - W1(i,2))^2];
end

NNMatrixW1 = sonuc(:,:)
vektorAraligi1 = min(NNMatrixW1)

for i=1:length(W2)
sonuc(i,:) = [(prototype(1,1) - W2(i,1))^2  + (prototype(1,2) - W2(i,2))^2];
end

NNMatrixW2 = sonuc(:,:)
vektorAraligi2 = min(NNMatrixW2) 

hold on;
prototypeNokta1 = [9; 1];   
plot(prototypeNokta1(1,:),prototypeNokta1(2,:),'Or');

hold on;
prototypeNokta2 = [0; 1];   
plot(prototypeNokta2(1,:),prototypeNokta2(2,:),'Ob');
