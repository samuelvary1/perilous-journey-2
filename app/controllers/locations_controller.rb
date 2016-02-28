class LocationsController < ApplicationController

	before_filter :authenticate

	def show
		@location = Location.find(params[:id])
	end

	def details
		@location = Location.find(params[:id])
		render "details"
	end

	def pickup	
		@character = Character.first
		@location = Location.find(params[:id])
		pickup = @location.items.find do |item|
			item.name == params[:item]
		end
		grab_item(pickup)
	end

	def grab_item(pickup)
		respond_to do |format|
			if @location.items.include?(pickup)
				@character.items << pickup
				@location.items.delete(pickup)
				pickup.location_id = nil
				format.html { redirect_to :back, notice: "You've picked up the #{pickup.name}!"}
			else
				format.html { redirect_to :back, alert: "Sorry, that item either isn't here, you've already grabbed it, or you've typed the wrong name. Try again!"}
			end
		end
	end

	def current_items
		@location = Location.find(params[:id])
		@character = Character.first
		render "current_items"
	end
end
