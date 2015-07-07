grocery_inventory = {
    "Hot Pockets" => 100,
    "Cat Food"    => 50,
    "Pepsi"       => 25,
    "Chips"       => 1000,
    "Candy"       => 2000
}

def menu
	puts "Please select one of the following options to continue."
	puts "View"
	puts "Edit"
	puts "Delete"
	puts "New"
	puts "Quit"
	puts ""
	menu_choice = gets.chomp.downcase
	if menu_choice == "quit" 
		menu_choice = false
	end
	puts ""
	return menu_choice
end


while menu_choice = menu
	if menu_choice == "view"
		puts "Please select which item you'd like to know the current inventory count of by entering the name of the product."
		grocery_inventory.each_key do |key|
			puts key
		end
		puts ""
		selection = gets.chomp.downcase
		puts ""
		if grocery_inventory.has_key?(selection)
		    puts "The current total of " + selection + " units is " + grocery_inventory[selection].to_s
		else
		    puts "Invalid Item."
		end
		puts ""

	elsif menu_choice == "edit"
 		puts "Choose Name to edit the product name. Choose Count to edit the unit count."
 		puts ""
 		edit =	gets.chomp.downcase
 		
 		if edit == "name"
		grocery_inventory.each_key do |key|
			puts key
		end

			puts "Choose a product to edit the name."
			puts ""
			product_name = gets.chomp.downcase
			if grocery_inventory.has_key?(product_name)
			puts "Change the product name"
			puts ""
			new_name = gets.chomp.downcase
			grocery_inventory[new_name] = grocery_inventory[product_name]
			grocery_inventory.delete(product_name)
			else
		    	puts "Invalid Item."
			end

		elsif edit == "count"
			puts "Choose a product to edit the unit count."
			grocery_inventory.each_key do |key|
			puts key
			puts ""
			end

			product_name = gets.chomp
			if grocery_inventory.has_key?(product_name)
				puts "Change the unit count."
				puts ""
				new_count = gets.chomp
				grocery_inventory[product_name] = new_count
			else
				puts "Invalid Item"
			end
		end
	
	elsif menu_choice == "delete"
		puts "Select an item to delete it."
		puts ""
		grocery_inventory.each_key do |key|
			puts key
		end

		delete = gets.chomp 

		if grocery_inventory.has_key?(delete)
				grocery_inventory.delete(delete)			
		else
			puts "Invalid Item"
		end

	elsif menu_choice == "new"
		puts "Would you like to enter a new product into the inventory? Yes or No"
		puts ""
		new_item = gets.chomp.downcase
		if new_item == "Yes"
		puts "Enter new product name into inventory."
		puts ""
		key = gets.chomp.downcase
		puts""
		puts "Enter the unit quantity of this product."
		puts ""
		value = gets.chomp
		grocery_inventory[key] = value
		end
	end
end