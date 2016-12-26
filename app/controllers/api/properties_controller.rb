class Api::PropertiesController < Api::BaseController

  before_action :find_will
  before_action :find_property , :except => [:index , :create]

  def index
    controller_index(controller_name)
  end

  def create
    controller_create( controller_name , params_property)
  end

  def show
    controller_show( controller_name , params[:id] )
  end

  def update
    controller_update( controller_name , params[:id] , params_property )
  end

  def destroy
    controller_destroy( controller_name , params[:id] )
  end



  protected

  def find_will
    @will = current_will
  end

  def find_property
    @property = @will.properties.find_by_id(params[:id])
  end

  def params_property
    params.permit( :address , :heir )
  end

end
