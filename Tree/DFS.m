visited = false(1, numnodes(G));
stack = startNode;
dfs_order = [];

while ~isempty(stack)
    current = stack(end);
    stack(end) = []; 
    if ~visited(current)
        dfs_order(end+1) = current;
        visited(current) = true;

        neighbors = successors(G, current); 
        neighbors = flip(neighbors); 
        for i = 1:length(neighbors)
            if ~visited(neighbors(i))
                stack(end+1) = neighbors(i); 
            end
        end
    end
end

disp('DFS Order:');
disp(nodes(dfs_order));
