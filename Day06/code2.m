
x=[3,5,7,9,11,13];
y=3;
n=length(x);
found=false;
tic;
for i=1:n
    if x(i)==y
        found=true;
        index=i;
        
        break;
    
    end
end
if found 
    fprintf("The target element found at index:%d\n",index);

else
    fprintf("element not found\n");
end
elapsedTime=toc; 
fprintf('Elapsed time:%f seconds\n',elapsedTime);
