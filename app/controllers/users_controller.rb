class UsersController < ApplicationController
	before_action :find_user, except: [:slider]
	def show

	end

	def update
		@user.will.create
		if @user.update(params_user)
			flash[:notice] = "Success"
			redirect_to wills_path
		else
			render "show"
			flash[:alert] = "Not updated"
		end

	end

	def slider
		# @topic
	end

	private
	def find_user
		@user = User.find(params[:id])
	end

	def params_user
		params.require(:user).permit(:gender, :birthday, :name)
	end
end
