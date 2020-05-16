% Nahodna bisekcia - metoda prveho radu
% funkcia
f = @(x) x.^4 - 4*x.^3 + 8*x.^2 - 3*x;
% derivacia
df = @(x) 4*x.^3 - 12*x.^2 + 16*x - 3;

% interval
a = 0;
b = 1;

% tolerancna konstanta
eps = 1e-2;

% vykreslenie funkcie
fplot(f,[a b]);
title(func2str(f))
hold on
plot(a,f(a),'ro');
plot(b,f(b),'ko');

% pocet krokov
kMax = 20;
for k = 1:kMax
    c = rand()*(b-a)+a;
    if df(c)>0
        b = c;
        plot(b,f(b),'ko');
    else
        a = c;
        plot(a,f(a),'ro');
    end
    if(b-a<eps)
        break
    end
    pause(.5)
end
hold off
% pocet potrebnych iteracii a najdeny interval
fprintf('========================== \n');
fprintf(' Metóda náhodnej bisekcie \n');
fprintf('-------------------------- \n');
fprintf('# Iter |     Interval \n');
fprintf('-------------------------- \n');
fprintf(' %3d   | %.6f %.6f  \n',k, a, b);
fprintf('========================== \n\n');
