function [eig_val, eig_vec] = power_2016113387(A, es, maxit)
%이름 : 오지현
[m, n] = size(A);
x = ones(n, 1);
ea = 100; eig_val = 1; eig_vec = x; iter = 1;
if m~=n, error('Matrix A must be square');  end
a = input('1. highest eigenvalue 2. lowest eigenvalue :');
if a == 2, A = inv(A); end
while(1)
    eig_val_old = eig_val;
    B = A*eig_vec;
    if max(B)>=max(abs(B)), eig_val = max(B);
    else eig_val = -max(abs(B));
    end
    eig_vec = B/eig_val;
    iter = iter + 1;
    if iter>=2, ea = abs((eig_val-eig_val_old)/eig_val)*100; end
    if ea<=es | iter>=maxit, break, end
end
if a==2, eig_val = 1/eig_val;
end