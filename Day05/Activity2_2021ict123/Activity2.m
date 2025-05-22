marks = zeros(1, 5);

for i = 1:5
    marks(i) = input(['Enter the mark for student ', num2str(i), ' (out of 100): ']);
    
    if marks(i) >= 90 && marks(i) <= 100
        grade = 'A';
    elseif marks(i) >= 80 && marks(i) < 90
        grade = 'B';
    elseif marks(i) >= 70 && marks(i) < 80
        grade = 'C';
    elseif marks(i) >= 60 && marks(i) < 70
        grade = 'D';
    else
        grade = 'F';
    end
    disp(['Student ', num2str(i), ' received a grade of: ', grade]);
end


while true
    disp('Choose an option:');
    disp('1. Show all marks as a bar chart');
    disp('2. Show average marks');
    disp('3. Exit');
    
  
    choice = input('Enter your choice (1/2/3): ');
    
   
    switch choice
        case 1 
            bar(marks); 
            title('Marks of 5 Students');
            xlabel('Student');
            ylabel('Marks');
            grid on;
        
        case 2
            avg_marks = mean(marks); 
            fprintf('The average mark of the students is: %2f\n', avg_marks);

        case 3
            fprintf('Thank you , Exiting program ');
            break;

        otherwise
            fprintf('Invalid choise.Please enter the valid option.');
    end
end
