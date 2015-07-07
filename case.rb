number = gets.chomp
if number == "5"
	puts "You entered 5"
elsif number == "6"
	puts "You entered 6"
else
	puts "You did not enter 5 or 6"
end

# these are two ways to write the same thing but the second one is more simplistic.

case number
	when "5"
		puts "You entered 5"
	when "6"
		puts "You entered 6"
	else
		puts "You neither entered 5 or 6"
end