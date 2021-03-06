class ActivesController < ApplicationController
	
	def show
		@active = Active.find(params[:id])
	end

	def index
		# Sort all actives according to their last names
		@actives = Active.all.sort_by{ |a| a.name.split(' ')[a.name.split(' ').length - 1].downcase }
	end
end
