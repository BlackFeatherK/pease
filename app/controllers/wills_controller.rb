class WillsController < ApplicationController

  def index
    @user = User.first
  end

  def show 
    @will = current_will
    @property = current_will.properties.build
    @properties = current_will.properties
    @stock_portfolio = current_will.stock_portfolios.build
    @stock_portfolios = current_will.stock_portfolios
    @account = current_will.accounts.build
    @accounts = current_will.accounts
    @motor = current_will.motors.build
    @motors = current_will.motors
    @jewelry = current_will.jewelries.build
    @jewelries = current_will.jewelries
  end

  def update 

  end

  def new_form
    @will = current_will
  end
end
