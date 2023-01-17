function[U,L,D]=seperate_matrix(A)

n=size(A,2);

U = zeros(n);
L = zeros(n);
D = zeros(n);

for i=1:n
for j=1:i

    L(i,j)=A(i,j);
    U(j,i)=A(j,i);

end
end


for i=1:n

    L(i,i)=L(i,i) - A(i,i);
    U(i,i)=U(i,i) - A(i,i);
    D(i,i)=A(i,i);
end

