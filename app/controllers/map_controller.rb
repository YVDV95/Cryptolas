class MapController < ApplicationController

	def index
		@spot = Spot.new
		@disable_nav = true
	end
end
