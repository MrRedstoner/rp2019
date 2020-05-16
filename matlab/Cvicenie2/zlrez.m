% Zlaty rez - metoda nulteho radu
% funkcia
f = @(x) x.^4 - 4*x.^3 + 8*x.^2 - 3*x;

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

phi = (sqrt(5)+1)/2;
z1 = 2-phi;
z2 = phi-1;

c1 = a+z1*(b-a);
c2 = a+z2*(b-a);
f1 = f(c1);
f2 = f(c2);
plot(c1,f1,'m*');
plot(c2,f2,'m*');
pause(.5)

% pocet krokov
kMax = 20;
for k = 1:kMax
    if f1<f2
        b = c2;
        plot(b,f(b),'ko');
        c2 = c1;
        f2 = f1;
        c1 = a+z1*(b-a);
        f1 = f(c1);
        plot(c1,f1,'m*');
    else
        a = c1;
        plot(a,f(a),'ro');
        c1 = c2;
        f1 = f2;
        c2 = a+z2*(b-a);
        f2 = f(c2);
        plot(c2,f2,'m*');
    end
    if(b-a<eps)
        break
    end
    pause(.5)
end
hold off
% pocet potrebnych iteracii a najdeny interval
fprintf('========================== \n');
fprintf('   Metóda zlatého rezu \n');
fprintf('-------------------------- \n');
fprintf('# Iter |     Interval \n');
fprintf('-------------------------- \n');
fprintf(' %3d   | %.6f %.6f  \n',k, a, b);
fprintf('========================== \n\n');
