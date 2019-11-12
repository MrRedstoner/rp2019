function x0 = zrez(f,a,b)
% metoda zlateho rezu na minimalizaciu funkcie jednej premennej na [a,b]
eps = 1e-7;
phi = (sqrt(5)+1)/2;
z1 = 2-phi;
z2 = phi-1;

c1 = a + z1*(b-a);
f1 = f(c1);
c2 = a + z2*(b-a);
f2 = f(c2);
x1 = a;
x2 = b;

k = 0;
while k<100
    k=k+1;
    if(f1<f2)
        x2 = c2;
        c2 = c1;
        f2 = f1;
        if(x2-x1<eps); break; end
        c1 = x1 + z1*(x2-x1);
        f1 = f(c1);
    else
        x1 = c1;
        c1 = c2;
        f1 = f2;
        if(x2-x1<eps); break; end
        c2 = x1 + z2*(x2-x1);
        f2 = f(c2);
    end
end
x0 = (x1+x2)/2;
end