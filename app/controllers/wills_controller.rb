class WillsController < ApplicationController
  
  def index
    @will = current_will
  end

end
