AccBalance=1000;

while true
    fprintf('\nATM Menu:\n');
    fprintf('1. Deposit\n');
    fprintf('2. Withdraw\n');
    fprintf('3. Balance Inquiry\n');
    fprintf('4. Exit\n');

    select = input('Please select an option(1-4): ');

    switch select
    case 1
        DepositAmount = input('Enter the deposit amount: ');
        if DepositAmount>0
            AccBalance = AccBalance + DepositAmount;
            fprintf('You have deposited %.2f. Your new account balance is %.2f.\n', DepositAmount, AccBalance');
        else
            fprintf('Invalid amount, please enter the positive value.');
        end

    case 2
        WithdrawAmount = input('Enter the withdraw amount: ');
        if WithdrawAmount>0
            if WithdrawAmount<=AccBalance
            AccBalance = AccBalance - WithdrawAmount;
            fprintf('You have withdrawn %.2f. Your new account balance is %.2f.\n', WithdrawAmount, AccBalance);
            else
                fprintf('You cannot withdraw more than your current balance of %.2f.\n', AccBalance);
            end
        else
            fprintf('Invalid amount! Please enter a positive value.');
        end

    case 3
        fprintf('Your current balance is: %.2f\n', AccBalance);
            
    case 4
        fprintf('Thank you for using the ATM.');
        break; 
            
   otherwise
        fprintf('Invalid option. Please select a valid option (1-4).');

   end
end