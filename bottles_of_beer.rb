beer = 99
until beer == 0

	if beer > 1
		puts "#{beer} Bottles of Beer on the wall! #{beer} Bottles of Beer! Take one down and pass it around...!"

	elsif beer == 1
		puts "#{beer} Bottle of Beer on the wall! #{beer} Bottle of Beer! Take one down and pass it around...!"
	end
		
	beer -= 1
	
	if beer == 0
		puts "No more bottles of beer on the wall so go home, you're drunk."			
	end
end