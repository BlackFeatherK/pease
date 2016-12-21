class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new 
    @answer = Answer.new
  end

  def show
    @user = User.find(params[:id])
  end
  
end
