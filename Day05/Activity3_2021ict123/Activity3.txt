numVoters = input('Enter the total number of voters: ');

votes = zeros(1,4);

fprintf('Voting Menu:\n');
fprintf('1. Candidate A\n');
fprintf('2. Candidate B\n');
fprintf('3. Candidate C\n');
fprintf('4. Candidate D\n');

for i = 1:numVoters
    vote = input(sprintf('Voter %d, enter your choice (1-4): ', i));
    switch vote
        case 1
            votes(1) = votes(1) + 1;
        case 2
            votes(2) = votes(2) + 1;
        case 3
            votes(3) = votes(3) + 1;
        case 4
            votes(4) = votes(4) + 1;
        otherwise
            fprintf('Invalid vote!\n');
    end
end


fprintf('\nVoting Results:\n');
fprintf('Candidate A: %d votes\n', votes(1));
fprintf('Candidate B: %d votes\n', votes(2));
fprintf('Candidate C: %d votes\n', votes(3));
fprintf('Candidate D: %d votes\n', votes(4));


[maxVotes, winnerIndex] = max(votes);
fprintf('Winner: Candidate %c\n', char(winnerIndex + 64));

while true
    fprintf('\nResult Visualization Menu:\n');
    fprintf('1. Show Bar Chart of Votes\n');
    fprintf('2. Show Pie Chart of Votes\n');
    fprintf('3. Show Scatter Plot (creative visualization)\n');
    fprintf('4. Exit\n');

    choice = input('Enter your choice (1-4): ');

    switch choice
        case 1
            figure;
            bar(votes);
            title('Vote Counts');
            xlabel('Candidates');
            ylabel('Number of Votes');
            xticklabels({'A', 'B', 'C', 'D'});
            grid on;
        case 2
            figure;
            pie(votes, {'Candidate A', 'Candidate B', 'Candidate C', 'Candidate D'});
            title('Vote Distribution');
        case 3
            figure;
            scatter(1:4, votes, 100, 'filled');
            title('Scatter Plot of Votes');
            xlabel('Candidates');
            ylabel('Number of Votes');
            xticks(1:4);
            xticklabels({'A', 'B', 'C', 'D'});
            grid on;
        case 4
            fprintf('Exiting visualization menu.\n');
            break;
        otherwise
            fprintf('Invalid choice! Please enter a valid option.\n');
    end
end
