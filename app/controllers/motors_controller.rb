class MotorsController < ApplicationController

  before_action :find_will
  before_action :find_motor , :except => [:index , :create]

  def index
    @motors = controller_index(controller_name)
  end

  def create
    @motor = controller_create( controller_name , params_motor)
  end

  def show
    @motor = controller_show( controller_name , params[:id] )
  end

  def update
    @motor = controller_update( controller_name , params[:id] , params_motor )
  end

  def destroy
    @motor = controller_destroy( controller_name , params[:id] )
  end



  protected

  def find_will
    @will = current_will
  end

  def find_motor
    @motor = @will.motors.find_by_id(params[:id])
  end

  def params_motor
    params.require(:motor).permit(:number)
  end

end
