function X = inverse(A)
b=eye(size(A,1));

C = [A b]; % Augmented matrix
rowC = size(C,1);  % Size of row of matrix C

columnC = size(C,2); % Size of column of matrix C
cycle= columnC -1; % Number of cycles

% Backward Elimination
j = 1; % iteration of cycles
while j <= cycle
  i=j+1; % iteration of multipicitian factor
while i <= rowC
    C(i,:) = C(i,:) -(C(i,j)/ C(j,j)) * C(j,:);
i=i+1;    
end
j=j+1;
end

% Forward Elimination
j = 1; % iteration of cycles
while j <= cycle
  i=j+1; % iteration of multipicitian factor
while i <= rowC
    C(j,:) = C(j,:) -(C(j,i)/ C(i,i)) * C(i,:);    
i=i+1;    
end
j=j+1;
end

for i=1:rowC
C(i,:) = C(i,:)/C(i,i);
end

X = C(:,rowC+1:2*rowC);
end
