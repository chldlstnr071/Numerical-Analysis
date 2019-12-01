function cosTaylor = cos_Taylor_2016113387(x, a, n)
%cosTaylor = cos_Taylor_2016113387(x, a, n) computes the taylor series of
%cos
cosTaylor = 0;
for m = 1:n
   z = ((-1).^(m-1)/factorial(2*m-2))*cos(a)*(x-a).^(2*m-2)+((-1).^m/factorial(2*m-1))*sin(a)*(x-a).^(2*m-1);
   cosTaylor = cosTaylor + z;
plot(x, cosTaylor, 'o--r');
end