n=10000;
tic; % start timing
for i= 1:n
    disp(i);
end

elapsedTime=toc; %End timing and store elaspsed time
fprintf('Elapsed time:%f seconds\n',elapsedTime);