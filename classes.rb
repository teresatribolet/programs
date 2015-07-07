# class Animal
# 	attr_accessor :animal_name, :animal_height, :animal_weight, :animal_country   #this is built in to ruby and it is magical and ruby already knows this and is mandatory here for creating this new class 

# 	def initialize(animal_name, animal_height, animal_weight, animal_country)

# 		@animal_name = animal_name
# 		@animal_height = animal_height
# 		@animal_weight = animal_weight
# 		@animal_country = animal_country
# 	end

# 	def animalintro
# 		puts "The #{@animal_name} originates from #{@animal_country}, weights #{@animal_weight} pounds and is #{@animal_height} inches tall."
# 	end
# end

# new_animal = Animal.new("cat", 6, 16, "Egypt")
# new_animal.animalintro

# class Word < String #This is saying to inherit everything from String and put it into this new "Word" class. 

# 	def very_long?(string)
# 		if string.length >= 10
# 			puts "true"
# 		end
# 	end
# end

# w = Word.new("cantaloupe")
# puts w.very_long?("cantaloupe")
# puts w.class
# puts w.class.superclass
# puts w.length

# # f = Word.new
# puts f.very_long?("short")


class Person
	attr_accessor :first_name, :last_name,
	:gender, :age

	def initialize(first_name, last_name, gender, age) #initialize is built into ruby

		@first_name = first_name
		@last_name = last_name
		@gender = gender
		@age = age
	end

	def introduction
		puts "#{@first_name} #{@last_name} is a #{@age} year old #{@gender}"
	end
end

new_person = Person.new("John", "Smith", "male", 34)
new_person.introduction

class Student < Person

	def learning
		puts "#{@first_name} is learning"
	end
end

student1 = Student.new("Teresa", "Tribolet", "female", 29)
puts student1.learning
puts student1.introduction

class Teacher < Person
	def teaching
		puts "#{@first_name} #{last_name} is the teacher in Dead Poet's Society."
	end
end

teacher1 = Teacher.new("John", "Keating", "male", 34)
puts teacher1.teaching
