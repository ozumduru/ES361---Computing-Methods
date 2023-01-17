function[C]=NewtonFDIP(x,fx,m)

syms xx

n=numel(x);
h = x(2) - x(1);

s=sym(ones(1,n));

for i=1:n-1
for j=1:i
s(1,i+1) =s(1,i+1)*( (xx - x(m))/h -(j-1))/j ;
end
end
diff_t=diff_table(fx,m);

P=sum(s.*diff_t);

C=coeffs(P);
C=double(C);
end