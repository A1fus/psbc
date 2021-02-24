function [dig] = num2dig(N)
dig = [];
n=N;
while(n>0)
    dig=[rem(n,10) dig];
    n= floor(n/10);
end
end