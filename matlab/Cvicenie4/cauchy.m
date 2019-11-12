% Cauchyho metoda najvacsieho spadu pre kvadraticku funkciu

% kvadraticka funkcia Q(x) = 1/2*x'Gx + h'x
% definicia matice G a vektoru h


Q = @(x) .5*x'*G*x + h'*x;

% vykreslenie funkcie
[X,Y] = meshgrid(linspace(-a,a,100));
Z = zeros(size(X));
for i=1:size(X,1)
    for j=1:size(X,2)
        Z(i,j) = Q([X(i,j);Y(i,j)]);
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

% vstupy:
% startovaci bod x, tolerancna konstanta eps
% pocitadlo iteracii k, maximalny pocet iteracii kMax



% vypisovanie
fprintf('============================================== \n');
fprintf('     Cauchyho metoda najvacsieho spadu \n');
fprintf('---------------------------------------------- \n');
fprintf('  k |     x_k(1)       x_k(2)   |     Q(x_k) \n');
fprintf('---------------------------------------------- \n');
fprintf('%3d | %12.8f %12.8f | %12.8f \n',k, x, Q(x));

% algoritmus
for k=1:kMax
    % vypocet gradientu g
    
    % testovanie presnosti: norm(g)<eps => break
    
    % vypocet smeru s
    
    % vypocet kroku lambda
    
    % vypocet novej aproximacie xnew
    
    % vykreslenie novej aproximacie
    plot([x(1) xnew(1)],[x(2) xnew(2)],'ko-')
    x = xnew;
    % vypisovanie
    fprintf('%3d | %12.8f %12.8f | %12.8f \n',k, x, Q(x));
end
fprintf('============================================== \n');
hold off
