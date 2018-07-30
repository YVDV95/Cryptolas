class Spot < ApplicationRecord

	def address
  		[street, number, city, state, country].compact.join(', ')
	end

	geocoded_by :address
	after_validation :geocode
	
end
