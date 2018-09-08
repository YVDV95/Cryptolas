class Spot < ApplicationRecord
	geocoded_by :address
	after_validation :geocode, if: :address_changed?

	def address
  		[street, number, city, state, country].compact.join(', ')
	end

	def address_changed?
		street_changed? || number_changed? || city_changed? || state_changed? || country_changed?
	end
	
end
