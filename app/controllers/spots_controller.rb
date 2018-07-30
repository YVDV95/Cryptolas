class SpotsController < ApplicationController
	before_action :find_spot, only: [:show, :edit, :update, :destroy]

	def index
		@spots = Spot.all.order('created_at DESC')
	end

	def new
		@spot = Spot.new
	end

	def create
		@spot = Spot.new(spot_params)
		if @spot.save
			redirect_to map_path
		else
			render 'form'
		end
	end

	def show
	end

	def edit
	end

	def update
		if @spot.update(spot_params)
			redirect_to @spot
		else
			render 'edit'
		end
	end

	def destroy
		@spot.destroy
		redirect_to root_path
	end

	private

	def spot_params
		params.require(:spot).permit(:street,:number,:city,:state,:country)
	end

	def find_spot
		@spot = Spot.find(params[:id])
	end
end
