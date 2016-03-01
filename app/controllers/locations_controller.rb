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
		@plot_array = @location.plot.split(". ")
	end

	def next_plot_section
		i = 0
		i += 1
		redirect_to :back
	end

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
