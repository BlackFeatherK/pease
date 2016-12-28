class UsersController < ApplicationController
	before_action :find_user
	def show

	end

	def update
		@user.create_will
		if @user.update(params_user)
			@user.create_will
			flash[:notice] = "Success"
			redirect_to wills_path
		else
			render "show"
			flash[:alert] = "Not updated"
		end
	end

	def slider
	end

	def save_slider
		if @user.update(params_user)
			flash[:notice] = "Success"
			redirect_to 
		else
			flash[:alert] = "Not updated"
			render :back
		end
	end

	def suggestion
		
	end

	private
	def find_user
		@user = current_user
	end

	def params_user
		params.require(:user).permit(:gender, :birthday, :name, :tangible_asset, :intangible_asset, :personal_item, :afterlife_service, :digital)
	end
end
