class UsersController < ApplicationController

	before_action :find_user
	def show

	end

	def update
		if @user.update(params_user)
			redirect_to welcome_index_path
		else
			render "show"
			flash[:alert] = "Not updated"
		end

	end

	private
	def find_user
		@user = User.find(params[:id])
	end

	def params_user
		params.require(:user).permit(:gender, :birthday, :name)
	end
end
