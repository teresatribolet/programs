puts "What is the temp?"
todays_temp = gets.chomp.to_i
puts "Is it raining, yes or no?"
rain = gets.chomp

def going_hiking(temp, raining)
	if raining == "yes"
		puts "Stay inside if it's raining"

	elsif temp > 105 || temp < -5
		puts "#{temp} degrees is not a valid temperature for Asheville."

	elsif temp >= 50 && raining == "no"
		puts "#{temp} degrees is perfect for hiking!"

	else 
		puts "It's too cold."
	end
end

puts going_hiking(todays_temp, rain)