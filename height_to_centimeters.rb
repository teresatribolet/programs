puts 'How many inches are you?'
height_inches = gets.chomp.to_i
height_centimeters = height_inches  * 2.54

puts "OMG! You are #{height_centimeters.to_s} centimeters!"