% Newtonova metoda
% funkcia
f = @(x) x.^4 - 4*x.^3 + 8*x.^2 - 3*x;
% derivacia
df = @(x) 4*x.^3 - 12*x.^2 + 16*x - 3;
% druha derivacia
d2f = @(x) 12*x.^2 - 24*x + 16;

% interval
a = 0;
b = 1;

% tolerancna konstanta
eps = 1e-5;

% startovaci bod
x = a;

% vypisovanie iteracnych bodov
fprintf('====================== \n');
fprintf(' Newtonova metoda \n');
fprintf('---------------------- \n');
fprintf('  k |  x_k \n');
fprintf('---------------------- \n');

% pocet krokov
kMax = 50;
for k = 1:kMax
    %%%%%%%%%%
    % tuto cast treba len na kreslenie
    % vykreslenie funkcie
    fplot(f,[a b]);
    hold on
    % Taylorov polynom
    Taylor = @(t) d2f(x)./2.*(t-x).^2+df(x).*(t-x)+f(x);
    % vykreslenie Taylorovho polynomu
    fplot(Taylor,[a b])
    % zakreslenie bodu x_k
    plot(x,f(x),'ok')
    legend('účelová funkcia f(x)','kvadratická aproximácia \phi(x)',...
        'interpolačný bod')
    hold off
    %%%%%%%%%%
    % nova aproximacia
    x = x - df(x)/d2f(x);
    % zapisanie do tabulky
    fprintf('%3d | %.12f  \n',k, x);
    % kontrola optimality
    if abs(df(x))<eps
        break;
    end
    pause(1)
end
fprintf('====================== \n');
