# 01.create array with 1000 numbers.. use tic/toc to measure time for binary search

```
arr = 1:1000; 

target = 750;

tic;

low = 1;

high = length(arr);

found = false;

while low <= high

    mid = floor((low + high) / 2);
    
    if arr(mid) == target
    
        found = true;
        
        break;
        
    elseif arr(mid) < target
    
        low = mid + 1;
        
    else
    
        high = mid - 1;
        
    end
    
end

elapsed_time = toc;

if found

    fprintf('Target found at index %d\n', mid);
    
else

    fprintf('Target not found\n');
    
end

fprintf('Elapsed time: %.6f seconds\n', elapsed_time);
```

## Output


![1](https://github.com/user-attachments/assets/21bd8eeb-9162-40be-a09e-2f6d1c8e850c)



# 02.....
```
arr = 1:1000;

target = 750;

tic;

low = 1;

high = length(arr);

foundBinary = false;

while low <= high

    mid = floor((low + high) / 2);
    
    if arr(mid) == target
    
        foundBinary = true;
        
        break;
        
    elseif arr(mid) < target
    
        low = mid + 1;
        
    else
    
        high = mid - 1;
        
    end

end

binary_time = toc;

tic;

foundLinear = false;

for i = 1:length(arr)

    if arr(i) == target
    
        foundLinear = true;
        
        break;
        
    end
    
end

linear_time = toc;

fprintf('Binary Search Time: %.6f seconds\n', binary_time);

fprintf('Linear Search Time: %.6f seconds\n', linear_time);

if foundBinary

    fprintf('Target found using Binary Search\n');
    
else

    fprintf('Target not found using Binary Search\n');
    
end

if foundLinear

    fprintf('Target found using Linear Search\n');
    
else

    fprintf('Target not found using Linear Search\n');
    
end
```
## Output

![2](https://github.com/user-attachments/assets/611e48d6-ba89-4999-8b13-55c251925ca9)



# 03.Selection sort
```
function sortedArray = selectionSort(arr)

    n = length(arr);
    
    for i = 1:n-1
    
        minIndex = i;
        
        for j = i+1:n
        
            if arr(j) < arr(minIndex)
            
                minIndex = j;
                
            end
            
        end
      
        temp = arr(i);
        
        arr(i) = arr(minIndex);
        
        arr(minIndex) = temp;
        
    end
    
    sortedArray = arr;
    
end

arr = [64, 25, 12, 22, 11];

sortedArr = selectionSort(arr);

disp('Sorted Array:');

disp(sortedArr);
```

## Output


![3](https://github.com/user-attachments/assets/78769e7c-14ff-4834-aa48-3bd110de61e5)


