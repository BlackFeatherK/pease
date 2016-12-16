class Api::BaseController < ApplicationController

  rescue_from ActiveRecord::RecordNotFound, with: :respond_record_not_found

  before_action :default_format_json
  # before_action :client_auth
  skip_before_action :verify_authenticity_token

  def error_404
    respond_error messages: "/#{params[:unmatched_route]} not found" , status: 404
  end

  protected

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