class Api::JewelriesController < Api::BaseController

  before_action :find_will
  before_action :find_jewelry , :except => [:index , :create]

  def index
    controller_index(controller_name)
  end

  def create
    controller_create( controller_name , params_jewelry)
  end

  def show
    controller_show( controller_name , params[:id] )
  end

  def update
    controller_update( controller_name , params[:id] , params_jewelry )
  end

  def destroy
    controller_destroy( controller_name , params[:id] )
  end



  protected

  def find_will
    @will = current_will
  end

  def find_jewelry
    @jewelry = @will.jewelries.find_by_id(params[:id])
  end

  def params_jewelry
    params.permit(:quantity , :amount , :heir)
  end

end
