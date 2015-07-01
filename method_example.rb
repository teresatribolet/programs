def your_name(name)
	return name\
	puts "I didnt get your name"
end

puts "Please enter your name:"
persons_name = gets.chomp

puts your_name(persons_name) 