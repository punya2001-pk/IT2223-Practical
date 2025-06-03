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
