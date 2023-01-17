clc
clear
close all

A=[ 10 -4  1  0  0 ;
    -4 15 -4  1  0 ;
     1 -4 15 -4  1 ;
     0  1 -4 15 -4 ;
     0  0  1 -4 10 ];

b =[ 1 ; 1 ; 1 ; 1 ; 1 ];

xi=[ 0 ; 0 ; 0 ; 0 ; 0 ];

accuracy = 0.002;
MaxIter = 100;

x_JM=Jacobi(xi,A,b,accuracy,MaxIter);
x_GS=Gauss_Seidel(xi,A,b,accuracy,MaxIter);


