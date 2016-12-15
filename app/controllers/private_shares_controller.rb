class PrivateSharesController < ApplicationController
  
  before_action :find_will




  protected

  def find_will
    @will = current_will
  end

  def params_private_share
    params.require(:private_share).permit(:company , :stock , :amount , :heir)
  end

end
