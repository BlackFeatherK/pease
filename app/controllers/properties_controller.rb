class PropertiesController < ApplicationController

  before_action :find_will
  before_action :find_property , :except => [:index , :create]

  def index
    @properties = controller_index(controller_name)
  end

  def create
    @property = controller_create( controller_name , params_property)
  end

  def show
    @property = controller_show( controller_name , params[:id] )
  end

  def update
    @property = controller_update( controller_name , params[:id] , params_property )
  end

  def destroy
    @property = controller_destroy( controller_name , params[:id] )
  end



  protected

  def find_will
    @will = current_will
  end

  def find_property
    @property = @will.properties.find_by_id(params[:id])
  end

  def params_property
    params.require(:property).permit( :address , :heir )
  end

end
