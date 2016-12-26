class WillsController < ApplicationController

  before_action :authenticate_user!

  def index
    @user = User.first
  end

  def show 
    @will = current_will
    @property = current_will.properties.build
    @properties = current_will.properties.where.not(:id => nil )
    @stock_portfolio = current_will.stock_portfolios.build
    @stock_portfolios = current_will.stock_portfolios.where.not(:id => nil)
    @account = current_will.accounts.build
    @accounts = current_will.accounts.where.not(:id => nil)
    @motor = current_will.motors.build
    @motors = current_will.motors.where.not(:id => nil)
    @jewelry = current_will.jewelries.build
    @jewelries = current_will.jewelries.where.not(:id => nil)
  end

  def edit
    @will = current_will
    @will.accounts.build.heirs.build
  end

  def update 
    @will = current_will
    @will.update(params_will)
    redirect_to edit_will_path(@will)
  end

  def new_heir
    @f = params['f'] 
  end

  def words
    
  end

  def vedio

  end


  private

  def params_will
    params.require(:will).permit(:accounts_attributes => [:bank , :account_type , :heirs_attributes => [:heir_type , :name , :proportion]])
  end

end
