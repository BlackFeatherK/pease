class DigitalAssetsController < ApplicationController
	before_action :find_will
	def new
		@digital_asset = current_will.digital_assets.build
	end

	private
	def find_will 
		@will = current_will
	end

	def find_digital_asset
		@digital_asset = current_will.digital_assets.find(params[:id])
	end
end
