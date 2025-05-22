array = 1:1000;

target = 750;

tic;

low = 1;
high = length(array);
found = false;

while low <= high
    mid = floor((low + high) / 2);
    if array(mid) == target
        found = true;
        break;
    elseif array(mid) < target
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