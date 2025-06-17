% write a matlab code to import a graph. Use the following source and destination data
% use the imported data draw the graph
% find and display the subgraph for the given nodes
% identify and disply the adjacent vertices for each node
% label the edges of the graph
% label the nodes of the graph
% color the graph
% find the shortest path from node 1 to node 5
% source = [1, 1, 2, 3, 4]
% destination = [2, 3, 4, 4, 5]

% Source and destination arrays
source = [1, 1, 2, 3, 4];
destination = [2, 3, 4, 4, 5];

% Create graph
G = graph(source, destination);

% Plot graph
figure;
h = plot(G, 'Layout', 'force');
title('Graph');

% Label nodes with their IDs
labelnode(h, 1:numnodes(G), string(1:numnodes(G)));

% Label edges with numbers
edgeLabels = "e" + (1:numedges(G))';
labeledge(h, G.Edges.EndNodes(:,1), G.Edges.EndNodes(:,2), edgeLabels);

% Color all nodes red and edges blue
highlight(h, 1:numnodes(G), 'NodeColor', 'r');
highlight(h, 1:numedges(G), 'EdgeColor', 'b');

% Display adjacent nodes
disp('Adjacent vertices for each node:');
for i = 1:numnodes(G)
    neighbors_i = neighbors(G, i);
    fprintf('Node %d: %s\n', i, mat2str(neighbors_i'));
end

% Extract and plot subgraph with nodes 2,3,4
subNodes = [2, 3, 4];
subG = subgraph(G, subNodes);

figure;
h_sub = plot(subG, 'Layout', 'force');
title('Subgraph (nodes 2, 3, 4)');
labelnode(h_sub, 1:numnodes(subG), string(subNodes));
highlight(h_sub, 1:numnodes(subG), 'NodeColor', 'g');

% Find shortest path from 1 to 5
spath = shortestpath(G, 1, 5);
fprintf('Shortest path from 1 to 5: %s\n', mat2str(spath));

% Highlight shortest path in original graph
highlight(h, spath, 'NodeColor', 'c');
for i = 1:length(spath)-1
    eIdx = findedge(G, spath(i), spath(i+1));
    highlight(h, eIdx, 'EdgeColor', 'm', 'LineWidth', 2);
end
