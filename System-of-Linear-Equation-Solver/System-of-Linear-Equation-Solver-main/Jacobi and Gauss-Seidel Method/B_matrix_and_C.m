function[B_JM,C] = B_matrix_and_C(A,b)

n=size(A,1);

B_JM=zeros(n);
C=zeros(n,1);

for i=1:n

B_JM(:,i) = -A(:,i)/A(i,i);
B_JM(i,i) =0;

C(i,1)=b(i,1)/A(i,i);
end
end