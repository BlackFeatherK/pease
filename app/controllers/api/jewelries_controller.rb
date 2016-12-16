class Api::JewelriesController < ApplicationController

  skip_before_action :verify_authenticity_token
  before_action :find_will
  before_action :find_jewelry , :except => [:index , :create]

  def index
    @jewelries = @will.jewelries
  end

  def create
    @jewelry = @will.jewelries.build( params_jewelry )
    if @jewelry.save
      @jewelry
    else
      fail Api::Except , @jewelry.errors.full_messages
    end
  end

  def show
    if @jewelry
      @jewelry
    else
      render json: { message: "nill"}
    end
  end

  def update
    if @jewelry.update( params_jewelry )
      @jewelry
    else 
      fail Api::Except , @jewelry.errors.full_messages
    end
  end

  def destroy
    @jewelry.destroy
    render json: { message: "success" }
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
