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
		@user = User.includes(:will => [:digital_assets,
																		:funerals,
																		:medicals,
																		:accounts,
																		:jewelries,
																		:motors,
																		:others,
																		:properties,
																		:stock_portfolios
																		]).find(current_user.id)
		@funeral = @user.will.funerals.size > 0 ? true : false
		@medical = @user.will.medicals.size > 0 ? true : false
		@tangible_asset = @user.will.accounts.size + @user.will.jewelries.size + @user.will.motors.size + @user.will.others.size + @user.will.properties.size + @user.will.stock_portfolios.size > 0 ? true : false
		@digital_asset = @user.will.digital_assets.size > 0 ? true : false
	end

	private
	def find_user
		@user = current_user
	end

	def params_user
		params.require(:user).permit(:gender, :birthday, :name, :tangible_asset, :intangible_asset, :personal_item, :afterlife_service, :digital)
	end
end
