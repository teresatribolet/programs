class Genre < ActiveRecord::Base
	has_many :movies
	has_many :actors
	
	validates :name, presence: true
	validates :name, length: {minimum: 3}
end
