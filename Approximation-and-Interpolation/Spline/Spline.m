function [f_a]=Spline(x,f,m_1,m_n,a)

n = numel(x);

m = sym('m',[1,n]);
m(1) = m_1;
m(n) = m_n;

h = zeros(1,n-1);
for i =1:n-1
h(i) = x(i+1) - x(i);
end

eqns = sym(zeros(1,n-1));
for i=2:n-1
 eqns(i) = h(i-1)*m(i-1) + 2*(h(i-1)+h(i))*m(i) +h(i)*m(i+1) == (f(i+1) - f(i-1) )/h(i) ;
end

[A,b] = equationsToMatrix(eqns(2:n-1));

m=A^(-1)*b;
m=double(m);

m = [ m_1 ;m; m_n];

c(1,:) = f;

for i=1:n-1
c(2,i) = (f(i+1)-f(i) )/h(i) - h(i)*(2*m(i) + m(i+1))/6;
end
c(3,:) = m./2;

for i = 1:n-1
c(4,i) = (m(i+1) -m(i) )/(6*h(i));
end
 
s=sym(zeros(n-1,1));
 syms xx 
 for i =1:n-1
 s(i,1) = c(1,i) + c(2,i)*(xx-x(i)) + c(3,i)*(xx-x(i)).^2 + c(4,i)*(xx-x(i)).^3;
 end

i = find( x>a );

 ss(xx)=s(i(1)-1,1);
f_a = double(ss(a));

end
