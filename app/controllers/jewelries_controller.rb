class JewelriesController < ApplicationController

  before_action :find_will
  before_action :find_jewelry , :except => [:index , :create]

  def index
    @jewelries = controller_index(controller_name)
  end

  def create
    @jewelry = controller_create( controller_name , params_jewelry)
  end

  def show
    @jewelry = controller_show( controller_name , params[:id] )
  end

  def update
    @jewelry = controller_update( controller_name , params[:id] , params_jewelry )
  end

  def destroy
    @jewelry = controller_destroy( controller_name , params[:id] )
  end



  protected

  def find_will
    @will = current_will
  end

  def find_jewelry
    @jewelry = @will.jewelries.find_by_id(params[:id])
  end

  def params_jewelry
    params.require(:jewelry).permit(:description)
  end

end
