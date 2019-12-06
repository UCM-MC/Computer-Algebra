% Euclides para Z y Zp
%Done

function d = EuclidInt(a,b,p)

x = mod(a,p);
y = mod(b,p);
while (y ~= 0) 
    z = mod(x,y);
    x = y; y = z;
end
d = x;
end