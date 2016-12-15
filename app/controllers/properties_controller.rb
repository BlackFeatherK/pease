class PropertiesController < ApplicationController

  before_action :find_will




  protected

  def find_will
    @will = current_will
  end

  def params_property
    params.require(:property).permit(:address , :heir)
  end
  
end
