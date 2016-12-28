class MedicalsController < ApplicationController
	before_action :find_will

	def new
		@medical = @will.medicals.build
	end


	def create
	end

	def show
	end

	private
	def find_will 
		@will = current_will
	end


end

