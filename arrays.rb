# my_array = []

# my_array<<("Hello")

# my_array.push("Teresa")

# my_array.push([1, 2, 3])

# puts my_array

# scores = [100, 85, 30, 79]

# loop_count = 0

# sum = 0

# 	while i < scores.length

# 		sum = sum + scores[loop_count]
# 		loop_count += 1
# 	end
# puts "The total is #{sum}"

scores = [100, 85, 30, 79]

sum = 0

scores.each do |score|
	sum = sum + score
end

puts "The total is #{sum}"


	
