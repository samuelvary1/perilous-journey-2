class ItemsController < ApplicationController

	def pickup	
		@character = Character.first
		@location = Location.find(params[:id])
		pickup = @location.items.find do |item|
			item.name == params[:item]
		end
		grab_item(pickup)
	end

	def drop_item
		@item = Item.find(params[:id])
		@item.character_id = nil
		@item.save
		redirect_to :back, notice: "you've dropped #{@item.name}"
	end

	def grab_item(pickup)
		respond_to do |format|
			if @location.items.include?(pickup)
				@character.items << pickup
				format.html { redirect_to :back, notice: "You've picked up the #{pickup.name}!"}
			else
				format.html { redirect_to :back, alert: "Sorry, that item either isn't here, you've already grabbed it, or you've typed the wrong name. Try again!"}
			end
		end
	end
end
