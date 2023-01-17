function[C]=Lagrange(x,fx)
syms xx
n=numel(x);
L = ones(1,n);

x=sym(x);
L=sym(L);
fx = sym(fx);
j=1;

for i=1:n
    j=1;
    while j <=n
        while ( i ~= j && j<= n)
            L(i)=L(i)*(xx-x(j))/(x(i)-x(j));
         j=j+1;   
        end
       j=j+1;
    end
    i=i+1; 
end

P(xx) = sum(L.*fx.');

C=double(coeffs(P(xx)));
end