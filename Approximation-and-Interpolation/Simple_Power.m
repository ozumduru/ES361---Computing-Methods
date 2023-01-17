function[alpha,beta]=Simple_Power(x,fx)
n=numel(x);

dx = log(x);
dy= log(fx);

phi = [ones(n,1) dx ];

C =Least_Square(dx,dy,phi);
alpha = exp(C(1,1));
beta = C(2,1);
end