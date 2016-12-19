class FuneralsController < ApplicationController
	before_action :find_will
	def show
	 @funeral = current_will.funerals.build
	end

	private
	def find_will 
		@will = current_will
	end
end
