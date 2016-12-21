class WillsController < ApplicationController

  def index
    @user = User.first
  end
end
