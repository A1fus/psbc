%% Matlab numbers

format compact % compact output 
pi
format long % shows more decimal places
pi

%
1.3
1.1e2 % decimal number 110
1.1e3
%% basic arithmetic

clc % clears screen
3/7 ; % supresses output
2^10 % taking powers
1+2+3 % multiple operations
1+2*3 % notice operation precedance
(1+2)*3 % if in doubt use brackets

%% Logical operations

1 == 2 % false gives 0, true get 1
3 < 4 % true get 1
1.e-400 == 0 % true on a computer
1.e-300  % also true
1.e-400 > 0 % false on a computer
%%
eps % smallest number on computer
1+ 1e-16 == 1
1+ eps ==1
1+eps/2 == 1
%% largest number

realmax
%% factors

p1 = 2^(sym(67))-1 % notice use of sym
factor(p1)
p2 = 2^(67)-1
factor(p2)
%% basic math functions

exp(1) % exponential function e
sin(pi/6) % sine function
log(2); % natural log not ln
sin(pi/6)-0.5 % 

help log
doc log
% lookfor log % too much output
%% Vectors and matrices

% row vector
a = [1 2 3] % a = [1, 2, 3]
% column vector
b = [1; 2; 3]

% operations with vectors and matrices
dot(a,b)
a*(a') % a times a transpose
a*b % should give scalar
b*a % 3x3

norm(a)
norm(a, 1) % 1 norm
norm(a, 'inf') % infinity norm
%% Matrices

A =[1 2 3; 4 5 6; 7 8 9]
A(2:3, 2:3)
A(1:2, 2:3)