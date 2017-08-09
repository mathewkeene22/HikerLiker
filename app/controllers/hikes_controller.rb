class HikesController < ApplicationController
	def index
		@Hikes = Hike.all
	end
end
