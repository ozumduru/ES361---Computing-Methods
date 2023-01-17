clc
clear
close all

A=[ 10 -4  1  0  0 ;
    -4 15 -4  1  0 ;
     1 -4 15 -4  1 ;
     0  1 -4 15 -4 ;
     0  0  1 -4 10 ];

b=[ 1 ; 1 ; 1 ; 1 ; 1 ];

x_GEM = Gauss(A,b);

x_LU = LU_Decom(A,b);
