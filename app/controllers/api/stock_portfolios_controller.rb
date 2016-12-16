class Api::StockPortfoliosController < ApplicationController

  skip_before_action :verify_authenticity_token
  before_action :find_will
  before_action :find_stock_portfolio , :except => [:index , :create]

  def index
    @stock_portfolios = @will.stock_portfolios
  end

  def create
    @stock_portfolio = @will.stock_portfolios.build( params_stock_portfolio )
    if @stock_portfolio.save
      @stock_portfolio
    else
      fail Api::Except , @stock_portfolio.errors.full_messages
    end
  end

  def show
    if @stock_portfolio
      @stock_portfolio
    else
      render json: { message: "nill"}
    end
  end

  def update
    if @stock_portfolio.update( params_stock_portfolio )
      @stock_portfolio
    else 
      fail Api::Except , @stock_portfolio.errors.full_messages
    end
  end

  def destroy
    @stock_portfolio.destroy
    render json: { message: "success" }
  end



  protected

  def find_will
    @will = current_will
  end

  def find_stock_portfolio
    @stock_portfolio = @will.stock_portfolios.find_by_id(params[:id])
  end

  def params_stock_portfolio
    params.permit( :bank , :heir )
  end
  
end
