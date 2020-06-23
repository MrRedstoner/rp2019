% test 0 - tight loop sum
printf('test 0\n');
n=1;
while true
    % measure 10 runs to get an average
    start=time();
    for i=0:9 % matlab does inclusive ranges
        mark0(n);
    end
    stop=time();

    % result is in form of floating-point seconds
    result=(stop-start)/10;

    % output in ms
    printf('%d %d\n', n, round(result*1e3));

    if(result>60)
        % end once runs take over a minute
        break
    else
        % otherwise up the requirement
        n = n*10;
    end
end


% test 1 - recursive fibonacci
printf('test 1\n');
n=10;
while true
    % measure 10 runs to get an average
    start=time();
    for i=0:9 % matlab does inclusive ranges
        mark1(n);
    end
    stop=time();

    % result is in form of floating-point seconds
    result=(stop-start)/10;

    % output in ms
    printf('%d %d\n', n, round(result*1e3));

    if(result>60)
        % end once runs take over a minute
        break
    else
        % otherwise up the requirement
        n = n+2;
    end
end

% test 2 - matrix calculations
printf('test 2\n');
%create a test matrix
mat = zeros(20,20);
for i=1:20
    for j = 1:20
    mat(i,j)=10+i-j;
    end
end

n=1;
while true
    % measure 10 runs to get an average
    start=time();
    for i=0:9 % matlab does inclusive ranges
        mark2(mat,n);
    end
    stop=time();

    % result is in form of floating-point seconds
    result=(stop-start)/10;

    % output in ms
    printf('%d %d\n', n, round(result*1e3));

    if(result>60)
        % end once runs take over a minute
        break
    else
        % otherwise up the requirement
        n = n*10;
    end
end

% %{%}
