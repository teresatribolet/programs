# def roll(dice_array)
# 	dice_hand = []
# 	dice_array = dice_array.shuffle
# 	dice_hand = dice_array.last(4)
# end

# dice_one = [1, 2, 3, 4, 5, 6]
# dice_two = [1, 2, 3, 4, 5, 6]

# my_hand = roll(dice_one)
# puts "your first roll is: #{my_hand.inspect}"

# my_hand = roll(dice_two)
# puts "your second roll is: #{my_hand.inspect}"

def roll(dice_array_1, dice_array_2)
	dice_hand = []
	dice_hand<<dice_array_1.sample
	dice_hand<<dice_array_2.sample
end

dice = [1, 2, 3, 4, 5, 6]
dice2 = [1, 2, 3, 4, 5, 6]

# deal the first hand
my_hand = roll(dice, dice2)
puts "Your first roll is: #{my_hand.inspect}"

#deals another hand
my_hand = roll(dice, dice2)
puts "Your second roll is #{my_hand.inspect}"
