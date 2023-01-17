function[C]=Least_Square_Func(x,y,phi,x1,x2)
for i=1:numel(phi)

    D(:,i)=int(x^(i-1)*phi,x1,x2);
    P(i,1)=int(x^(i-1)*y,x1,x2);

end
D = double(D);
P =double(P);
C=D^(-1)*P;
end