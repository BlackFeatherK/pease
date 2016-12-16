class Api::MotorsController < Api::BaseController

  skip_before_action :verify_authenticity_token
  before_action :find_will
  before_action :find_motor , :except => [:index , :create]

  def index
    @motors = @will.motors
  end

  def create
    @motor = @will.motors.build( params_motor )
    if @motor.save
      @motor
    else
      fail Api::Except , @motor.errors.full_messages
    end
  end

  def show
    if @motor
      @motor
    else
      render json: { message: "nill"}
    end
  end

  def update
    if @motor.update( params_motor )
      @motor
    else 
      fail Api::Except , @motor.errors.full_messages
    end
  end

  def destroy
    @motor.destroy
    render json: { message: "success" }
  end



  protected

  def find_will
    @will = current_will
  end

  def find_motor
    @motor = @will.motors.find_by_id(params[:id])
  end

  def params_motor
    params.permit(:quantity , :amount , :heir)
  end

end
