class MotorsController < ApplicationController

  before_action :find_will




  protected

  def find_will
    @will = current_will
  end

  def params_motor
    params.require(:motor).permit(:quantity , :amount , :heir)
  end
  
end
