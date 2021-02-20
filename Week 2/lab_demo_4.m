%% Exploring numbers
%% Random numbers

rand(1) % Uniform distribution in (0,1)
randn(5) % Normalised distribution with mean 0 and std 1
%% Prime numbers

format compact
pl = primes(100)

isprime(137)

factor(178)
%% Factorise large numbers 

factorial(19)
factor(factorial(sym(19)))
%% Prime number theorem

% Numbers of primes up to N is approx N/log(N)
N=10000000;
pl=primes(N);
length(pl)*log(N)/N
%% List twin primes up to N

N = 10000;
pl= primes(N);

pg = pl(2:end)-pl(1:end-1);
ind = find(pg == 2);
[pl(ind); pl(ind+1)]
%% Largest gap between primes up to N

N=10000;
pl = primes(N)
gp = pl(2:end)-pl(1:end-1);
[maxgap,ind] = max(gp)
[pl(ind), pl(ind+1)]
%% Check Fermat's prime numbers F=2^(2^n)+1

format long g
n=5
F=2^(2^n)+1
factor(F)

n=sym(6)
F=2^(2^n)+1
factor(F)

n=sym(7)
F=2^(2^n)+1
factor(F)
%% 
%