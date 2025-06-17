nodes = {'A', 'B', 'C', 'D', 'E', 'F', 'G'};
s = [1 1 2 2 3 3];
t = [2 3 4 5 6 7];
G = digraph(s, t, [], nodes);

startNode = 1; 
visited = false(1, numnodes(G));
queue = startNode;
bfs_order = [];

while ~isempty(queue)
    current = queue(1);
    queue(1) = []; 
    if ~visited(current)
        bfs_order(end+1) = current;
        visited(current) = true;
        
        neighbors = successors(G, current); 
        for i = 1:length(neighbors)
            if ~visited(neighbors(i))
                queue(end+1) = neighbors(i); 
            end
        end
    end
end

disp('BFS Order:');
disp(nodes(bfs_order));
