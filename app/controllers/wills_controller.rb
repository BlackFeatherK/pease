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
    @accounts = current_will.accounts
    @motor = current_will.motors.build
    @motors = current_will.motors.where.not(:id => nil)
    @jewelry = current_will.jewelries.build
    @jewelries = current_will.jewelries.where.not(:id => nil)
  end

  def update 

  end

  def new_heir
    @f = params['f'] 
  end

  def words
    
  end

  def vedio

  end

end
