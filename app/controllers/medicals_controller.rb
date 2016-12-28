class MedicalsController < ApplicationController
	before_action :find_will
	before_action :find_medical, only: [:show, :update]

	def new
		@medical = @will.medicals.build
	end


	def create
		@medical = @will.medicals.build(params_medical)
		if @medical.save
			redirect_to suggestion_user_path(current_user)
			flash[:notice] = "Successful"
		else
			flash[:alert] = "Failure"
			render "new"
		end
	end

	def show
	end

	def update
		if @medical.update(params_medical)
			flash[:notice] = "Successful update"
			redirect_to wills_path
		else
			flash[:alert] = "Update fails"
			render "show"
		end
	end

	private
	def find_will 
		@will = current_user.will
	end

	def params_medical
		params.require(:medical).permit(:organ_donation, :futile_medical)
	end

	def find_medical
		@medical = @will.medicals.find(params[:id])
	end


end

