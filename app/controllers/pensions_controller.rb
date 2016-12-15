class PensionsController < ApplicationController

  before_action :find_will




  protected

  def find_will
    @will = current_will
  end

  def params_pension
    params.require(:pension).permit(:amount , :heir)
  end
  
end
