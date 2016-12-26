class Api::FuneralsController < Api::BaseController

  before_action :find_will
  before_action :find_funeral , :except => [:index , :create]

  def index
    controller_index(controller_name)
  end

  def create
    controller_create( controller_name , params_funeral)
  end

  def show
    controller_show( controller_name , params[:id] )
  end

  def update
    controller_update( controller_name , params[:id] , params_funeral )
  end

  def destroy
    controller_destroy( controller_name , params[:id] )
  end



  protected

  def find_will
    @will = current_will
  end

  def find_funeral
    @funeral = @will.funerals.find_by_id(params[:id])
  end

  def params_funeral
    params.permit(:religion , :arrangement , :participants)
  end
  
end
