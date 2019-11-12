% Kvadraticka interpolacia, 2 uzly, zadane f1, f2, f'1<0
% funkcia
f = @(x) x.^4 - 4*x.^3 + 8*x.^2 - 3*x;
% derivacia
df = @(x) 4*x.^3 - 12*x.^2 + 16*x - 3;

% interval 
a = 0;
b = 1;

% vykreslenie funkcie
fplot(f,[a b]);
hold on

% tolerancna konstanta
eps = 1e-5;

% zadane su f1, f2 a f'1
f1 = f(a);
f2 = f(b);
fd1 = df(a);

% vypisovanie iteracnych bodov
fprintf('========================== \n');
fprintf(' Kvadraticka interpolacia \n');
fprintf('-------------------------- \n');
fprintf('  k |  x_k \n');
fprintf('-------------------------- \n');

% pocet krokov
kMax = 50;
for k = 1:kMax
    f12 = (f2-f1)/(b-a);
    % nova aproximacia
    x = a - .5*(b-a)*fd1/(f12 - fd1);
    % zakreslenie bodu x_k
    plot(x,f(x),'or')
    % zapisanie do tabulky
    fprintf('%3d | %.12f  \n',k, x);
    if df(x)<0
        a = x;
        f1 = f(a);
        fd1 = df(a);
    else
        b = x;
        f2 = f(b);
    end
    % kontrola optimality
    if abs(df(x))<eps
        break;
    end
    pause(.5)
end
hold off
fprintf('========================== \n');
