class Owner < ActiveRecord::Base
	belongs_to :club
	has_many :pets
end
