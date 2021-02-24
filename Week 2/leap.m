function leaps = leap(n)
leaps = [];
for k=1:n
    if rem(k,4)~=0
        continue
    end
    if rem(k,100)~=0
        leaps = [leaps, k];
     
    elseif rem(k,400)==0
        leaps = [leaps, k];
    end
end