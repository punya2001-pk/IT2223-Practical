
s = [1 2 3 4 5 6 7 8 9 10 1 1 6 2 7 3 8 4 9 5 3 4 5 1 2];
t = [11 11 11 11 11 11 11 11 11 11 10 6 2 7 3 8 4 9 5 10 4 5 1 2 3];
G = graph(s, t);
h = plot(G, 'LineWidth', 2.5);

% Highlight all nodes 1 to 11 in blue
for i = 1:11
    highlight(h, i, 'NodeColor', 'blue');
end

% Highlight edges from node 11 to nodes 1 to 10 in magenta
for i = 1:10
    highlight(h, 11, i, 'EdgeColor', 'magenta');
end

% Highlight green edges
green_s = [1 1 2 3 4];
green_t = [2 5 3 4 5];
for i = 1:length(green_s)
    highlight(h, green_s(i), green_t(i), 'EdgeColor', 'green');
end

% Highlight red edges
red_s = [1 6 2 7 3 8 4 9 5 10];
red_t = [6 2 7 3 8 4 9 5 10 1];
for i = 1:length(red_s)
    highlight(h, red_s(i), red_t(i), 'EdgeColor', 'red');
end
