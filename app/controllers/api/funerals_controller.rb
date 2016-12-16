class Api::FuneralsController < Api::BaseController

  skip_before_action :verify_authenticity_token
  before_action :find_will
  before_action :find_funeral , :except => [:index , :create]

  def index
    @funerals = @will.funerals
  end

  def create
    @funeral = @will.funerals.build( params_funeral )
    if @funeral.save
      @funeral
    else
      fail Api::Except , @funeral.errors.full_messages
    end
  end

  def show
    if @funeral
      @funeral
    else
      render json: { message: "nill" }
    end
  end

  def update
    if @funeral.update( params_funeral )
      @funeral
    else 
      fail Api::Except , @funeral.errors.full_messages
    end
  end

  def destroy
    @funeral.destroy
    render json: { message: "success" }
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
