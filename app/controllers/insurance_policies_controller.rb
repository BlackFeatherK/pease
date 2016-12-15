class InsurancePoliciesController < ApplicationController

  before_action :find_will




  protected

  def find_will
    @will = current_will
  end

  def params_insurance_policy
    params.require(:insurance_policy).permit(:insurer , :type , :amount , :heir)
  end
  
end
