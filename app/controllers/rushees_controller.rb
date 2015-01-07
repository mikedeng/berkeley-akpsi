class RusheesController < ApplicationController
	def show
		@rushee = Rushee.find(params[:id])
	end

	def index
		# Sort all rushees according to their last names
		@rushees = Rushee.all.sort_by{ |a| a.name.split(' ')[a.name.split(' ').length - 1].downcase }
	end
end