class Api::WillsController < Api::BaseController

  before_action :find_will

  def index
  end

  protected

  def find_will
    @will = current_will
  end
  
end
