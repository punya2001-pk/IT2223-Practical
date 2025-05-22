# Code 01
```
n=5;

tic;

if n==5

    disp('n is 5');

else

    disp('n is not 5');
    
end

toc;
```
## Output

![1](https://github.com/user-attachments/assets/72b00096-b509-451f-86aa-6c0713b5feb9)


   
# Code 02

```
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

```
## Output

![2](https://github.com/user-attachments/assets/274eff6d-4eb9-430d-96c0-c30cf3800ce7)



# Code 03
```
a=[3,6,8,12,14,17,25,29,31,36,42,47,53,55,62];

n=length(a);

target=3;

low=1;

high=n;

mid=(low+high)/2;

found=false;

for i=1:n

if a(mid)==target

    found=true;
    
    index=i;
    
    break;
    
end

if target<a(mid)

    high=mid-1;

else

  low=mid+1;
  
end

end

if found

fprintf('target enement is at index:%d\n',index);

else

    fprintf('elemet not found\n');
    
end
```

## Output

![3](https://github.com/user-attachments/assets/b72f1624-720e-470c-afee-339bf7340797)



# Code 04
```
n=10000;

tic; % start timing

for i= 1:n

    disp(i);
    
end

elapsedTime=toc; %End timing and store elaspsed time

fprintf('Elapsed time:%f seconds\n',elapsedTime);
```

## Output

![4](https://github.com/user-attachments/assets/2dbc45f3-ae4b-44d7-9df7-d18bd57631ef)
