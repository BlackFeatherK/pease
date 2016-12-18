class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  helper_method :current_will

  def current_will
    return @will if @will

    if session[:will_id]
      @will = Will.find(session[:will_id])
    else
      @will = Will.create!
      session[:will_id] = @will.id
    end

    return @will
  end

end
