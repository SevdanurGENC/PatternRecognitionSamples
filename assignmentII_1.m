clear all;
close all;
clc;
  
veri=1+randn(1,100);
standartSapma=1; 

degerAraligi=-10:0.1:10;  
L=zeros(1,length(degerAraligi));  

for i=1:length(degerAraligi)
  L(i) = sum(1/sqrt(2*pi*standartSapma^2)*exp(-(veri-degerAraligi(i)).^2/(2*standartSapma^2))); 
end

[maxL,index]=max(L);
display(degerAraligi(index));
 
plot(degerAraligi,L);
hold on;
stem(degerAraligi(index),L(index),'r');  
 