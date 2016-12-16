class Api::BaseController < ApplicationController

  skip_before_action :verify_authenticity_token

  def error_404
    respond_error messages: "/#{params[:unmatched_route]} not found" , status: 404
  end

end