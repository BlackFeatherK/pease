class DigitalAssetsController < ApplicationController
	before_action :find_digital_asset, only: [:show, :update]
	before_action :find_will
	def new
		@digital_asset = current_will.digital_assets.build
	end

	def create
		@digital_asset = current_will.digital_assets.build(param_digital_asset)
		if @digital_asset.save
			redirect_to welcome_index_path
			flash[:notice] = "Digital Assets saved"
		else
			render 'new'
			flash[:alert] = "Not added"
		end
	end

	def show
	end

	def update
		if @digital_asset.update(param_digital_asset)
			flash[:notice] = "Successful update"
			redirect_to welcome_index_path
		else
			flash[:alert] = "Update fails"
			render "show"
		end
	end

	private
	def find_will 
		@will = current_will
	end

	def find_digital_asset
		@digital_asset = current_will.digital_assets.find(params[:id])
	end

	def param_digital_asset
		params.require(:digital_asset).permit(:facebook_account, :facebook_account_treatment, 
												:goolge_account, :google_account_treatment,
												:google_account_content, :google_account_id,
												:google_account_password, :heir, :heir_email)
	end


end
