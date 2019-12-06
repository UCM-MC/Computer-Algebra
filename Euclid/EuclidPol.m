%Euclides para polinomios
%Dividir a entre b como polinomios con coeficientes en el GF(p^m)
function d = EuclidPol(a,b,p,m)
x = a;
y = b;
while isequal(y, [-Inf]) == 0 
   
    [~,r] = gfdeconv(x,y,gftuple([-1:p^m-2]',m,p));
    
    x = y; y = r;
end
d = x;
end

%2x^2 ([-1 -1 1]) entre 2x + 2 ([1 1]) -> 2 (1)
%2x^2 entre 2x ([-1 1]) -> 2x
