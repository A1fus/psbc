function n = dig2num(dig)

n = dig(end);
pow10=10;
for k=1:length(dig)-1
    n=n+dig(end-k)*pow10;
    pow10=10*pow10;
end