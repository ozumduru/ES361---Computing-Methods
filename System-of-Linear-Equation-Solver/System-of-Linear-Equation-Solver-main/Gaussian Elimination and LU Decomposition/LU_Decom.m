function[x]=LU_Decom(A,b)
n=size(A,1);

[MultiFac,A_dot,~]=Elimination(A,b);


U = A_dot;
L = eye(n) - MultiFac;

y = Substution(1,n,L,b); %forward
x = Substution(n,1,U,y); %backward

end