class WillsController < ApplicationController

  def index
    @user = User.first
  end

  def show 
    @will = current_will
  end

  def new_form
    @will = current_will
  end
end
