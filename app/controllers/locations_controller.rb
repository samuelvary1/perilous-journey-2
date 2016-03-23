class LocationsController < ApplicationController

	before_filter :authenticate
	
	def set_current_location
		# binding.pry
		@character = Character.first
		@new_location = Location.find(params[:id].to_i + 1)
		@character.items.each do |item|
			item.location_id = @new_location.id
			item.save
		end
		@character.save

		redirect_to @new_location
		# binding.pry
	end

	def show

		@location = Location.find(params[:id])



	end

	# have the array hidden on the page and have the first sentence visible, 
	# jquery on click next, swap out the next sentence 


	def details
		@location = Location.find(params[:id])
		render "details"
	end
	
	def current_items
		@location = Location.find(params[:id])
		@character = Character.first
		render "current_items"
	end
end
