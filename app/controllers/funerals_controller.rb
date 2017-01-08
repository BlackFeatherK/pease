class FuneralsController < ApplicationController

	before_action :find_will
	before_action :find_funeral, only: [:edit, :show, :update] 
	
	def show
	end

	def new
		@funeral = @will.build_funeral
	end

	def create
		@funeral = @will.build_funeral(funeral_params)
		if @funeral.save
			current_user.update(:funeral => true)
			redirect_to suggestion_user_path(current_user)
			flash[:notice] = 'successful'
		else 
			render "new"
			flash[:alert] = "Fail"	
		end
	end

	def update
		if @funeral.update(funeral_params)
			redirect_to wills_path
			flash[:notice] = 'successful'
		else 
			render "show"
			flash[:alert] = "Fail"	
		end
	end

	private
	def find_will 
		@will = current_user.will
	end

	def funeral_params
		params.require(:funeral).permit(:preference, :religion, :body_arrangement, :other_arrangement, :burial_arrangement, :funeral_service_ids => [])
	end

	def find_funeral
		@funeral = @will.funeral
	end
end
