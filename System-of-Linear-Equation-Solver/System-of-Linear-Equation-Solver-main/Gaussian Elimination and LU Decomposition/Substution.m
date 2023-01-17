function[x]=Substution(i1,i2,A_dot,b_dot)

n=size(A_dot,1);
x = zeros(n,1);

for i = linspace(i1,i2,n)

    d = A_dot(i,:) .* x.';
    d(i)=[];
x(i,1) = ( b_dot(i,1) - sum(d) )/A_dot(i,i) ; 

end
end