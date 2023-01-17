function[diff_t_m]=diff_table(fx,m) 
n=numel(fx);

diff_t = zeros(n);
diff_t_m = zeros(1,n);

diff_t(:,1)=fx ;

for i=1:n-1
diff_t(:,i+1) = [zeros(1,1) ; diff(diff_t(:,i)) ];

end

for i=1:m
diff_t_m(1,i) = diff_t(m,i); 
end

for i=m+1:n
diff_t_m(1,i)=diff_t(i,i);
end

end