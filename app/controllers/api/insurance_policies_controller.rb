class Api::InsurancePoliciesController < ApplicationController

  skip_before_action :verify_authenticity_token
  before_action :find_will
  before_action :find_insurance_policy , :except => [:index , :create]

  def index
    @insurance_policies = @will.insurance_policies
  end

  def create
    @insurance_policy = @will.insurance_policies.build( params_insurance_policy )
    if @insurance_policy.save
      @insurance_policy
    else
      fail Api::Except , @insurance_policy.errors.full_messages
    end
  end

  def show
    if @insurance_policy
      @insurance_policy
    else
      render json: { message: "nill"}
    end
  end

  def update
    if @insurance_policy.update( params_insurance_policy )
      @insurance_policy
    else 
      fail Api::Except , @insurance_policy.errors.full_messages
    end
  end

  def destroy
    @insurance_policy.destroy
    render json: { message: "success" }
  end



  protected

  def find_will
    @will = current_will
  end

  def find_insurance_policy
    @insurance_policy = @will.insurance_policies.find_by_id(params[:id])
  end

  def params_insurance_policy
    params.permit(:insurer , :policy_type , :amount , :heir)
  end

end
