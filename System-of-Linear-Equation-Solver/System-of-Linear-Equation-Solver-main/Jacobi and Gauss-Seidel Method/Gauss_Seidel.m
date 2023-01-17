function[x]=Gauss_Seidel(xi,A,b,accuracy,MaxIter)
[B_GS,~] = B_matrix_and_C(A,b);

if abs(det(B_GS)) < 1
error = 1;
j=1;
n=numel(b);

[U,L,D]=seperate_matrix(A);

if U == transpose(L)

M = (D+L)*D^(-1)*(D+U);

A = M^(-1)*A;
b = M^(-1)*b;
end

[B_GS,C] = B_matrix_and_C(A,b);

while error > accuracy

for i=1:n

xi(i,1,j+1) = sum( B_GS(i,:).' .* xi(:,1,j) )+ C(i,1);
end

difference = xi(:,1,j+1) - xi(:,1,j);
error = sqrt(difference.^2);

j=j+1;
if j > MaxIter
    break
end

end
x=xi(:,j);
else
'B_GS not converge'
end
end