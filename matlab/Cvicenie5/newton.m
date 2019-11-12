% Newtonova metoda

% vstupy:
% ucelova funkcia f
% startovaci bod x, tolerancna konstanta eps
% maximalny pocet iteracii kmax

f = @(x) 1/4*(x'*Q*x)^2 + 1/2*x'*A*x + b'*x;

% vykreslenie funkcie
[X,Y] = meshgrid(linspace(-10,10,100));
Z = zeros(size(X));
for i=1:size(X,1)
    for j=1:size(X,2)
        Z(i,j) = f([X(i,j);Y(i,j)]);
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% zakomentujte tuto cast, ak nechcete vyreslovat funkciu
figure(1)
surfc(X,Y,Z,'EdgeColor','none');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(2)
contour(X,Y,Z)
hold on

% zapis vystupu
fprintf('================================================ \n');
fprintf('              Newtonova metoda \n');
fprintf('------------------------------------------------ \n');
fprintf('  k |     x_k(1)       x_k(2)   |    f(x_k) \n');
fprintf('------------------------------------------------ \n');
fprintf('%3d | %12.8f %12.8f | %14.8f \n',0, x, f(x));
for k=1:kmax
    % vypocet gradientu g
    
    % testovanie presnosti: norm(g)<eps => break
    
    % vypocet Hessovej matice
    
    % vypocet novej aproximacie xnew
    
    % vykreslenie novej aproximacie
    plot([x(1) xnew(1)],[x(2) xnew(2)],'ko-')
    x = xnew;
    % zapis vystupu
    fprintf('%3d | %12.8f %12.8f | %14.8f \n',k, x, f(x));
    %     pause(.1)
end
fprintf('================================================ \n');
hold off
