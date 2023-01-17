function[MultiFac,A_dot,b_dot]=Elimination(A,b)

C = [A b]; % Augmented matrix
rowC = size(C,1);  % Size of row of matrix C

columnC = size(C,2); % Size of column of matrix C
cycle= columnC -1; % Number of cycles

j = 1; % iteration of cycles

MultiFac=zeros(rowC);

while j <= cycle
  i=j+1; % iteration of multipicitian factor
while i <= rowC
    
    MultiFac(i,j) = -C(i,j)/ C(j,j); % Multipicition Factor
    C(i,:) = C(i,:) + MultiFac(i,j) * C(j,:);
    
i=i+1;    
end
j=j+1;
end

 A_dot=C(1:5,1:5); % upper triangular matrix
 b_dot=C(1:5,6);
end