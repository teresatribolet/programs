class User < ActiveRecord::Base
	has_many :pins
	has_many :boards, dependent: :destroy

	validates :first_name, :presence => true, length: {:minimum => 3}
	validates :last_name, :presence => true, length: {:minimum => 3}
	validates :email, :presence => true

	def full_name
		"#{first_name}, #{last_name}"
	end
end
