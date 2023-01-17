
%% Least Square Function
clc
clear
close all

syms x
y = exp(x);

phi = [1 x x^2];

x1 = 0;
x2 = 1;

C_LSF=Least_Square_Func(x,y,phi,x1,x2);

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc
clear
close all



x=[1 ; 3 ; 5 ; 7 ; 9 ; 11];
fx=[0.611 ; 0.746 ; 1.113 ; 1.660 ; 2.477 ; 4.513];
phi = [ones(numel(x),1) x x.^2];
m=1;
C_LS=Least_Square(x,fx,phi);

C_C =Collacation(x,fx);

C_L=Lagrange(x,fx);

C_newton=NewtonFDIP(x,fx,m);

[alpha,beta]=Simple_Power(x,fx);


