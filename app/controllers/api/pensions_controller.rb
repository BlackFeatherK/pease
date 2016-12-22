class Api::PensionsController < Api::BaseController

  before_action :find_will
  before_action :find_pension , :except => [:index , :create]

  def index
    controller_index(controller_name)
  end

  def create
    controller_create( controller_name , params_pension)
  end

  def show
    controller_show( controller_name , params[:id] )
  end

  def update
    controller_update( controller_name , params[:id] , params_pension )
  end

  def destroy
    controller_destroy( controller_name , params[:id] )
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
