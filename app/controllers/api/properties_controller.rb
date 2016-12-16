class Api::PropertiesController < ApplicationController

  skip_before_action :verify_authenticity_token
  before_action :find_will
  before_action :find_property , :except => [:index , :create]

  def index
    @properties = @will.properties
  end

  def create
    @property = @will.properties.build( params_property )
    if @property.save
      @property
    else
      fail Api::Except , @property.errors.full_messages
    end
  end

  def show
    if @property
      @property
    else
      render json: { message: "nill"}
    end
  end

  def update
    if @property.update( params_property )
      @property
    else 
      fail Api::Except , @property.errors.full_messages
    end
  end

  def destroy
    @property.destroy
    render json: { message: "success" }
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
