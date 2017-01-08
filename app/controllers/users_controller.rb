class UsersController < ApplicationController
	
	before_action :authenticate_user!
	before_action :find_user

	def show

	end

	def update
		if @user.update(params_user)
			unless @user.will
				@user.create_will
			end
			redirect_to question_user_path
		else
			render "show"
			flash[:alert] = "Not updated"
		end
	end

	def question
		@will = @user.will
	end

	def save_question
		if @user.will.update(params_will)
			redirect_to suggestion_user_path
		else
			render :back
		end
	end

	def suggestion
		@user = User.includes(:will => [:digital_asset,
																		:funeral,
																		:medical,
																		:accounts,
																		:jewelries,
																		:motors,
																		:others,
																		:properties,
																		:stock_portfolios
																		]).find(current_user.id)
		@funeral = @user.will.funeral.present? ? true : false
		@medical = @user.will.medical.present? ? true : false
		@tangible_asset = @user.will.accounts.size + @user.will.jewelries.size + @user.will.motors.size + @user.will.others.size + @user.will.properties.size + @user.will.stock_portfolios.size > 0 ? true : false
		@digital_asset = @user.will.digital_asset.present? ? true : false
	end

	private
	def find_user
		@user = current_user
	end

	def params_user
		params.require(:user).permit(:gender, :birthday, :name, :tangible_asset, :intangible_asset, :personal_item, :afterlife_service, :digital , :audio)
	end

	def params_will
		params.require(:will).permit(:tangible_asset, :intangible_asset, :personal_item, :afterlife_service, :digital, :medical)
	end
end
