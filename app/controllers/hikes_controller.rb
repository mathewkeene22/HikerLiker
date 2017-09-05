class HikesController < ApplicationController
	def index
		@Hikes = Hike.all
	end

	def create
		@hike = Hike.new(hike_params)

		if @hike.save
			render json: @hike
		else
			render json: @hike.errors, status: unprocessable_entity
		end

	private

	def hike_params
		params.require(:hike).permit(:hikes, :name, :date, :miles, :elevation, :rating, :created_at, :updated_at)
	end
end
