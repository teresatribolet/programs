# 1.

# puts "What is your first name?"
# first_name = gets.chomp.capitalize

# puts "What is your last name?"
# last_name = gets.chomp.capitalize

# full_name = first_name + " " + last_name
# full_name_letters = full_name.length - 1

# puts "Your name is #{full_name}! Did you know that you have #{full_name_letters} characters in your name?"

# 2.
# puts "Let's do some math! Please add 1+2."
# answer = gets.chomp.to_i

# if answer == 3
# 	puts "Your answer is #{answer}. You got it right!"
# else
# 	puts "You got it wrong. Sorry charlie!"
# end

# puts "Let's do some math! Please subtract 5-3."
# answer = gets.chomp.to_i

# if answer == 2
# 	puts "Your answer is #{answer}. You got it right!"
# else
# 	puts "You got it wrong. Sorry charlie!"
# end

# 3.
# puts "What is your favorite color?"
# answer = gets.chomp

# if answer == "blue"
# 	puts "Good choice. Blue is a great color!"
# elsif answer == "green"
# 	puts "Good choice. Green is a great color!"
# else
# 	puts "Really? #{answer} is not my favorite color..."
# end

# 4. For thsi one, how would I get first letter of drink name capital for multiple name drink, like Fuzzy Navel? Also, what if somebody types in something other than their exact age number?
# puts "I'm your bartender. What would you like to order?"
# drink_answer = gets.chomp.to_s
# puts "You want a #{drink_answer}? That's a good choice. But hey, you look a little young. Can I see some ID first and tell me how old you are?"
# age_answer = gets.chomp.to_i

# if age_answer >= 21
# 	puts "Sorry about the hassle. Damn the man, ya know? I'll make you #{drink_answer} extra strong ok bro? Don't forget to leave a tip."
# else
# 	puts "I wasn't born yesterday. You've got another " + (21 - age_answer).to_s + " years until you can drink. Get lost, I've got paying customers waiting!"
# end

# 5.
# puts "Say something."
# while true
# 	input = gets.chomp
# 	puts input
# 	if input == "I'm a dummy"
# 		puts "Hey, wait a minute!"
# 		break
# 	end
# end


