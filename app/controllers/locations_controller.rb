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
		@plot_hash = Hash[@plot_array.map.with_index.to_a]


	end

	def next_plot

		@location = Location.find(params[:id])
		@plot_array = @location.plot.split(". ")
		# @cycle_object = @plot_array.cycle.each
		# @segment = @cycle_object.next
		index = params[:index].to_i
		@current_sentence = @plot_array[index]
		@updated_sentence = @plot_array[index + 1]
		redirect_to @location
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
