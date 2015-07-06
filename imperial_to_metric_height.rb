# Look at this again later and figure out why it isn't breaking!


def convert_inches_to_centimeters(number)
	height_centimeters = number * 24
	return height_centimeters
end

answer = "no"

while answer != "quit"

puts "What is your name?"

my_name =  gets.chomp.downcase

if my_name == "Felicia"
	puts "Bye Felicia"
	break
end

puts "What is your height in inches?"

height_inches = gets.chomp.to_f

puts "What is your weight in pounds?"

weight_pounds = gets.chomp.to_f

height_centimeters = convert_inches_to_centimeters(height_inches)

weight_kilograms = weight_pounds * 0.453592

puts "#{my_name} is #{height_centimeters.to_s} cm and #{weight_kilograms.to_s} kg."

puts "Are you done calculating? If so enter 'quit'. "
answer = gets.chomp.downcase

end