def atm_action(balance, action)
	case action
	when '1'
		puts "Please enter the amount you wish to withdraw:"
		amount = gets.chomp.to_f
		if balance  - amount < 0
			puts "Sorry, you don't have that much money."
		else
			balance = balance - amount
		end
	when '2'
		puts "Please enter the amount you wish to deposit:"
		amount = gets.chomp.to_f
		balance = balance + amount
	when '3'
		puts "your balance is: $#{balance}"
	when "exit"
		puts "Thank you for banking with the Ruby ATM!"
	else
		puts "Invalid Selection, try again!"
	end
	return balance
end

puts "Hello! What is your name?"
name = gets.chomp.capitalize

puts "Welcome to the Ruby ATM. Please enter your initial deposit:"
balance = gets.chomp.to_f

action = ""
while action != 'exit'
	puts = " "
	puts "Please enter your selection:"
	puts " * Enter 1 for withdrawals "
	puts " * Enter 2 for deposits "
	puts " * Enter 3 to check your balance "
	puts " * Enter exit to leave the Ruby ATM "

	action = gets.chomp.downcase

	balance = atm_action(balance, action)
	puts "Transaction complete."
end




