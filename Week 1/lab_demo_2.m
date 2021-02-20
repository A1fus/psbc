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
%% Matrix functions

A = [1 2 3; 4 5 6; 7 8 9]
rank(A)
trace(A)
det(A)
det(sym(A))
%% Eigenvalues and eigenvectors

eig(A)
[V,D]= eig(A)
A*V(:,1)
D(1,1)*V(:,1 )
%% Generate data and plot functions

x = linspace(0, 10, 101);
y1 = sin(x);
y2 = cos(x);
plot(x, y1, x, y2)
%% dot operator

a= [1 2 3];
a*a' % a * a transpose
a'*a
a.^2 % element wise squaring
a= 0:0.2:3
expa=exp(a)
plot(a, expa)
%% Linear equations and Ax=b

A = rand(3,3)
b = rand(3,1)

% many ways to solve Ax=b
invA=inv(A)
x1=invA*b
x2= linsolve(A,b)
x3=A\b
%% Test the speed of the linear solver

A = rand(5000);
b= rand(5000,1);
tic; invA = inv(A); x1=invA*b; toc
tic; x2=linsolve(A,b); toc
tic;  x3=A\b; toc
%% reshape

A = [1 2  3; 4 5 6]
reshape(A, 3,2)
A=1:9
A= reshape(A, 3,3)
N=9;
A=1:N^2
A= reshape(A,N,N)'