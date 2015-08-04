advice = "Few things in life are as important as house training your pet dinosaur."
puts advice.gsub!("important", "urgent")

numbers = [1, 2, 3, 4, 5]
puts numbers.delete(1) #will remove 1
puts numbers.delete_at(1) #will remove all odd numbers

puts (10..100).cover?(42)

for n in 10..100
	if n == 42
		puts "There's 42!"
	end
end


famous_words = "and seven years ago..."
puts "Four score and " + famous_words
famous_words.prepend("Four score and ")
puts famous_words.insert(0, "Four score")

def add_eight(number)
	number + 8
end

number = 2

how_deep = "number"

5.times { how_deep.gsub!("number", "add_eight(number)") }

p how_deep

eval(how_deep)

flinstones = ["Fred", "Wilma"]
flinstones << ["Barney", "Betty"]
flinstones << ["BamBam", "Pebbles"]

flinstones.flatten!
puts flinstones.inspect


flintstones.each do |k, v|
	if k == "Barney"
		puts [k, v]
	end
end

puts flintstones.assoc("Barney")

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flinstones_hash = {}
flistones.each_with_index do |name, index|
	flintstones_hash[name] = index
end

puts flintstones_hash

10.times { |number| puts (" " * number) + "The Flintstones Rock!" }

The Flintstones Rock!
	The Flintstones Rock!
		The Flintstones Rock!

statement = "The Flintstones Rock"

puts statement.scan(/\w/\).inject(Hash.new(0)){|h, c| h[c] += 1; h}

result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
	letter_frequency = statement.scan(letter).count
	result[letter] = letter_frequency if letter_frequency > 0
end

puts result

puts "the value of 40 + 2 is " + (40 + 2).to_s

puts "the value of 40 + 2 is #{40 + 2}"

numbers = [1, 2, 3, 4]
numbers.each do |number|
	p number
	numbers.shift[0] #deletes from front forward
	puts numbers 
end

numbers = [1, 2, 3, 4]
numbers.each do |number|
	p number
	numbers.pop(1) #deletes from back 
end

def factors(number)
	dividend = number
	divisors = []
	if divident > 0
		while divident != 0
		divisors << number / divident if number % divident == 0
		divident -= 1
	end
	divisors
end
end
puts factors(50)