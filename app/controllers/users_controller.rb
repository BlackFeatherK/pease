class UsersController < ApplicationController
	
	before_action :authenticate_user!
	before_action :find_user

	def show

	end

	def update
		if @user.update(params_user)
			@user.create_will
			redirect_to slider_user_path
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
			redirect_to suggestion_user_path
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
