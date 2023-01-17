function[C]=Collacation(x,fx)
for i =1:numel(x)
    A(:,i) = x.^(i-1) ;
end

C = A^(-1)*fx;
end

