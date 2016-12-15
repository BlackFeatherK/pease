class FuneralsController < ApplicationController

  before_action :find_will




  protected

  def find_will
    @will = current_will
  end

  def params_funeral
    params.require(:funeral).permit(:religion , :format , :participants)
  end
  
end
