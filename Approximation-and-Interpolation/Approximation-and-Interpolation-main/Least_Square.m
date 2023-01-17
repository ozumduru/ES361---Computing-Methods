function[C]=Least_Square(x,fx,phi)
 for i=1:size(phi,2)
 
 D(i,:)= sum(x.^(i-1).*phi,1);
 P(i,1)= sum(x.^(i-1).*fx);
 end
C = D^(-1)*P;
end

