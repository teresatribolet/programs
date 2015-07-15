#Example of a case statement....
# puts 'Enter your grade of A, B, C, D or F:'

# grade = gets.chomp.upcase
# until grade == 'QUIT'

# case grade
# 	when 'A'
# 		puts 'Good Job!'
# 	when 'B'
# 		puts 'Not bad!'
# 	when 'C'
# 		puts 'You need help!'
# 	else
# 		puts 'You are just making it up!'
# end
# puts 'Continue Entering your grades or type QUIT to end.'
# grade = gets.chomp.upcase
# end

def atm_deposit
    puts "Please enter your deposit:"
    deposit = gets.chomp.to_f
        while deposit < 5
            puts "Minimum deposit is $5, please enter your deposit:"
            deposit = gets.chomp.to_f
        end
    @total =  @total + deposit
end

def atm_withdrawl
    puts "How much would you like to withdraw?"
    withdrawl = gets.chomp.to_f
        while withdrawl > @total
            puts "You do not have that much in your account please select a smaller amount:"
            withdrawl = gets.chomp.to_f
        end
    @total = @total - withdrawl
end

def atm_action(name)
    while true
        puts "\nWelcome #{name}, Please select an option:"
        puts "1. Withdrawal"
        puts "2. Deposit"
        puts "3. Check Balance"
        puts "Enter 'Exit' to leave ATM\n"
        choice = gets.chomp
        case choice
        when "1"
            atm_withdrawl
        when "2"
            atm_deposit
        when "3"
            puts "Your balance is #{@total}"
        when "Exit", "exit"
            break
        end
    end
end


puts "Welcome to your ATM\nPlease enter your name:"
name = gets.chomp.capitalize
@total = 0
atm_deposit

atm_action(name)

