function [q,r] = GaussianDivision(a,b)
a1 = real(a); a2 = imag(a); b1 = real(b); b2 = imag(b);

r = (a1*b1+a2*b2)/(b1^2+b2^2);
s = (a2*b1 - a1*b2)/(b1^2+b2^2);

m = round(r); n = round(s);
q = m + n*i;
r = a - b*q;
end