class LogicController < ApplicationController

	def attempt_to_proceed
		# call this method when a player clicks go to next chapter
		# iterate through their items to see if they have what is required
		# OR certain key items / lack thereof can affect the outcome of the store
		# You may want a different action for each chapter because it will get fairly specific

		# if there is a new outcome then the location text (both plot and details) will have to change
		# also have to figure out a way to block someone from simply typing in the next location in the address bar
		redirect_to set_current_location_path
	end
end
