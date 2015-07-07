# I did something wrong in class. this won't run as end. "Unexpected keyword end on Line 87"

my_hash {}

def add_vehicle(my_hash, vehicle, stock)
	my hash[vehicle] = stock
	@full_inventory = my_hash
end

def inventory_edit(option)
	count = @full_inventory[option]
	puts "\nPrevious number of #{option.capitalize}
	's on lot where #{count}"
	puts "Did you sell or buy any #{option.capitalize} 
	's \n1. Sell\n 2. Buy"
	choice = gets.chomp
	while choice != "1" || choice != "2"
		puts "Please enter either 1 for Sell or 2 for Buy"
		choice = gets.chomp
	end
	case choice
	when "1"
		puts "Please enter how many you sold:"
		user_input = gets.chomp.to_i
		while user_input > count.to_i
			puts "You only have #{count} #{option.capitalize}
			's please enter correct number you sold:"
			user input = gets.chomp.to_i
		end
		count = count.to_i - user_input
		@full_inventory[option] = count
	when "2"
		puts "Please enter how many you bought:"
		user_input = gets.chomp.to_i
		count = count.to_i + user_input
		@full_inventory[option] = count
	end

	if count > 1
		puts "There are now #{count} #{option.capitalize}'s in inventory\n"
	else
		puts "There are now #{count} #{option.capitalize} in inventory\n"
	end
end

def hash_list(my_hash)
	counter = 0
	@full_inventory.each do |car, count|
		counter += 1
		if count.to_i > 1
			puts "\n#{counter}. There are #{count} #{car.capitalize}'s in inventory. \n"
		else
			puts "\n#{counter}. There are #{count} #{car.capitalize} in inventory. \n"

end

puts "Lot Inventory Tracker"
puts "Please add a vehicle"
vehicle = gets.chomp.downcase
puts "Please enter how many you have in stock:"
stock = gets.chomp.to_i

add_vehicle(my_hash, vehicle, stock)

while true
	puts "\nPlease select an option:"
	puts "1. Add New Vehicle"
	puts "2. Edit Inventory"
	puts "3. Check Inventory"
	puts "Enter 'Exit' to leave Inventory Manager\n"
	choice = gets.chomp.downcase
		case choice
		when "1"
			puts "Please add a vehicle:"
			vehicle = gets.chomp.downcase
			puts "Please enter how many you have in stock:"
			stock = gets.chomp.to_i
			add_vehicle(my_hash, vehicle, stock)
		when "2"
			puts @full_inventory.keys
			puts "Please enter a vehicle listed to edit:"
			option = gets.chomp.downcase
			inventory_edit(option)
		when "3"
			hash_list(my_hash)
		when "exit"
			break
		end
	end