class FuneralsController < ApplicationController
	before_action :find_will, 
	
	def show
	 @funeral = current_will.funerals.build
	end

	def create
		@funeral = @will.funerals.build(funeral_params)
		if @funeral.save
			flash[:notice] = 'successful'
		else 
			render "show"
			flash[:alert] = "Fail"	
		end
	end

	private
	def find_will 
		@will = current_will
	end

	def funeral_params
		params.require(:funeral).permit(:preference, :body_arrangement, :burial_arrangement, :funeral_service_ids => [])
	end
end
