%Euclides para enteros de Gauss
function d = EuclidGauss(a,b)
addpath('../Utils')
x = a;
y = b;
while (y ~= 0) 
    [~,r] = GaussianDivision(x,y);
    x = y; y = r;
end
d = x;
end
