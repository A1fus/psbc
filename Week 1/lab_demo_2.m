%% Vectors and matrices

a = [1 2 3] % row vector
b = [1; 2; 3] % column vector
A = [1 2; 2 3] % 2x2 matrix
%% Colon : operator

a = [0:10] % constructing a row vector [0 1 ... 9 10]
a = 0:3:10  % [0 3 6 9]
c = 1:3:11 % [1 4 7 10]
d = 5:-2:0
%%
% linspace(x,y,n) equally spaced entries including x and y
e = linspace(0,10,4)
e(2:3)
e(3) = 1
e(1:2:4) =0
%%
a = -5:1:0
a(2) =6
a([2 4 6])= zeros(1,3)
a=1:30
a([2:2:30]) = 0
%% Size and length of vector

size(a)
size(rand(3,4))
length(a)
length(rand(3,4))
%% Statistics of a vector

a= rand(1,6)
max(a)
min(a)
mean(a)
std(a)
sum(a)
%% Different construction techniques

N=9;
A=zeros(N); 
A(2:N-1, 2:N-1)=ones(N-2)
%% Use of end

A= zeros(8,8);
A(2:end-1, 2:end-1)=1;
A