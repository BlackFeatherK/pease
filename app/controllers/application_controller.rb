class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  helper_method :current_will


  def controller_index( controller_name )
    @will.try(controller_name)
  end

  def controller_create( controller_name , params )
    @will.try(controller_name).create( params )
  end

  def controller_show( controller_name , params_id )
    find_will_name( controller_name , params_id )
  end

  def controller_update( controller_name , params_id , params )
    find_will_name( controller_name , params_id )
    @will_name.update( params )
  end

  def controller_destroy( controller_name , params_id )
    find_will_name( controller_name , params_id )
    @will_name.destroy
  end

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


  private 

  def find_will
    @will = current_will
  end

  def find_will_name( controller_name , params_id)
    @will_name = @will.try( controller_name ).find_by_id(params_id)
  end

end
