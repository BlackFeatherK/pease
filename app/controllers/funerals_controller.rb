class FuneralsController < ApplicationController
	before_action :find_will
	before_action :find_funeral, only: [:edit, :show] 
	
	def show

	end

	def new
		@funeral = current_will.funerals.build
	end

	def create
		@funeral = @will.funerals.build(funeral_params)
		if @funeral.save
			redirect_to welcome_index_path
			flash[:notice] = 'successful'
		else 
			render "show"
			flash[:alert] = "Fail"	
		end
	end

	def update

	end

	private
	def find_will 
		@will = current_will
	end

	def funeral_params
		params.require(:funeral).permit(:preference, :body_arrangement, :burial_arrangement, :funeral_service_ids => [])
	end

	def find_funeral
		@funeral = current_will.funerals.find(params[:id])
	end
end
