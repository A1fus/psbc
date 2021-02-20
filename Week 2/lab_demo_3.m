%% Functions
%% Anonymous functions

myfun1 = @(a,x) x.^a/a % notice .^ ensure you can use this with vectors
myfun1(2,1:5)

a = 2;
myfun2 = @(x) x.^a/a
myfun2(1:5)
%% logical operators

a = true
b = false

c = 2<4
% by default true is 1, false is 0
true == 1 % true
true == 2 % false
%% Logical and '&' and or '|' or '||'

(1>3) & (2<4)
(1>3) | (2<4)
(1>3) || (2<4)
%% Branching using if statement

x = randn(1)
% get the sign of x 
if(x > 0)
    s =1;
elseif(x==0)
    s=0;
else
    s= -1;
end
s
%%
x = randn(1)
if(x>0)
    x=x;
elseif(x==0)
    x=0;
else
    x=-x;
end
x
%%
x = randn(1)
if(x<0)
    x=-x;
    
end
x
%% For loops

% for variable = start: inc: end value
S= 0;
for n=1:1:100
    S=S+n;
end
S
%% sum of inverse squares

format compact
format long
N=10000;
S= 0;
for n=1:N
    S=S+(1/n^2);
end
[S; pi^2/6]
%% while

N=10000;
n=1;
S=0;
while(n<=N)
    S=S +1/n^2;
    n=n+1;
end
S
%% Break

N=10000;
S=0;
n=1;
while(1)
    S=S+1/n^2;
    n=n+1;
    if(n==N+1)
        break;
    end
end
S
%% Continue

k=1;
while(1)
    k=k+1;
    if(k>10)
        break
    end
    if(k==5)
        continue % Jumps to next iteration
    end
    k
end
%% Print all prime factors if n is composite

for n =2:20 
    if(isprime(n))
        continue
    end
    pf = factor(n);
    disp(['The prime factors of ' num2str(n) ' is ' num2str(pf)])
end
%%