function[x]=Gauss(A,b)
n=size(A,1);

[~,A_dot,b_dot]=Elimination(A,b);

x = Substution(n,1,A_dot,b_dot); %backward

end