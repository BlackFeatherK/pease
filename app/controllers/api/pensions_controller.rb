class Api::PensionsController < ApplicationController

  skip_before_action :verify_authenticity_token
  before_action :find_will
  before_action :find_pension , :except => [:index , :create]

  def index
    @pensions = @will.pensions
  end

  def create
    @pension = @will.pensions.build( params_pension )
    if @pension.save
      @pension
    else
      fail Api::Except , @pension.errors.full_messages
    end
  end

  def show
    if @pension
      @pension
    else
      render json: { message: "nill"}
    end
  end

  def update
    if @pension.update( params_pension )
      @pension
    else 
      fail Api::Except , @pension.errors.full_messages
    end
  end

  def destroy
    @pension.destroy
    render json: { message: "success" }
  end



  protected

  def find_will
    @will = current_will
  end

  def find_pension
    @pension = @will.pensions.find_by_id(params[:id])
  end

  def params_pension
    params.permit( :amount , :heir)
  end
  
end
