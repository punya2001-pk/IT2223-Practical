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