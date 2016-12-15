class JewelriesController < ApplicationController

  before_action :find_will




  protected

  def find_will
    @will = current_will
  end

  def params_jewelry
    params.require(:jewelry).permit(:quantity , :amount , :heir)
  end
  
end
