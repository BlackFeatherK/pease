class Api::BaseController < ApplicationController

  rescue_from ActiveRecord::RecordNotFound, with: :respond_record_not_found

  # before_action :find_will , :except => :error_404
  before_action :default_format_json
  # before_action :client_auth



  def controller_index( controller_name )
    @will_names = @will.try(controller_name)
  end

  def controller_create( controller_name , params )
    @will_name = @will.try(controller_name).build( params )
    if @will_name.save
      @will_name
    else
      fail Api::Except , @will_name.errors.full_messages
    end
  end

  def controller_show( controller_name , params_id )
    find_will_name( controller_name , params_id )
    if @will_name
      @will_name
    else
      render json: { message: "nill" }
    end
  end

  def controller_update( controller_name , params_id , params )
    find_will_name( controller_name , params_id )
    if @will_name.update( params )
      @will_name
    else 
      fail Api::Except , @will_name.errors.full_messages
    end
  end

  def controller_destroy( controller_name , params_id )
    find_will_name( controller_name , params_id )
    @will_name.destroy
    render json: { message: "success" }
  end


  def error_404
    respond_error messages: "/#{params[:unmatched_route]} not found" , status: 404
  end

  protected

  def find_will
    @will = current_will
  end

  def find_will_name( controller_name , params_id)
    @will_name = @will.try( controller_name ).find_by_id(params_id)
  end

  def default_format_json
    request.format = "json" if request.format.to_s == "text/html"
  end

  def repond_record_not_found(e)
    repond_error(message: e.message , status: 404 , debug: e.backtrace)
  end

  def respond_error(messages: nil , status: 400 , debug: nil)
    render json: {error: true , messages: messages , debug: debug } , status: status
  end

  def client_auth
    respond_error unless request.headers.to_h["HTTP_X_TOKEN"] == "222"
  end

end