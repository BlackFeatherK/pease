class StockPortfoliosController < ApplicationController

  before_action :find_will
  before_action :find_stock_portfolio , :except => [:index , :create]

  def index
    @stock_portfolios = controller_index(controller_name)
  end

  def create
    @stock_portfolio = controller_create( controller_name , params_stock_portfolio)
  end

  def show
    @stock_portfolio = controller_show( controller_name , params[:id] )
  end

  def update
    @stock_portfolio = controller_update( controller_name , params[:id] , params_stock_portfolio )
  end

  def destroy
    @stock_portfolio = controller_destroy( controller_name , params[:id] )
  end



  protected

  def find_will
    @will = current_will
  end

  def find_stock_portfolio
    @stock_portfolio = @will.stock_portfolios.find_by_id(params[:id])
  end

  def params_stock_portfolio
    params.require(:stock_portfolio).permit( :bank)
  end

end
