# Numerical-Analysis
eigen

## cos_Taylor
    function cosTaylor = cos_Taylor_2016113387(x, a, n)
    %cosTaylor = cos_Taylor_2016113387(x, a, n) computes the taylor series of
    %cos
    cosTaylor = 0;
    for m = 1:n
       z = ((-1).^(m-1)/factorial(2*m-2))*cos(a)*(x-a).^(2*m-2)+((-1).^m/factorial(2*m-1))*sin(a)*(x-a).^(2*m-1);
       cosTaylor = cosTaylor + z;
    plot(x, cosTaylor, 'o--r');
    end
  
  이 코드는 테일러 시리즈를 계산하고 plot 시키는 코드이다.
  plot 시켰을 때 나오는 결과는 아래의 사진과 같다.
  
  
  ## eig
    function [eig_val, eig_vec] = power_2016113387(A, es, maxit)
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
    
  이때 입력인수 A, es, maxit은 다음과 같다.
  A = [ 40 -20 0; -20 40 -20;  0 -20 40]
  es = 0.05
  maxit = 100
  
  파일을 돌렸을 때 나오는 결과값은 아래의 사진과 같다.
  
  

    
