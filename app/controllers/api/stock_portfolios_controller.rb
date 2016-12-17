class Api::StockPortfoliosController < Api::BaseController

  skip_before_action :verify_authenticity_token
  before_action :find_will
  before_action :find_stock_portfolio , :except => [:index , :create]

  def index
    controller_index(controller_name)
  end

  def create
    controller_create( controller_name , params_account)
  end

  def show
    controller_show( controller_name , params[:id] )
  end

  def update
    controller_update( controller_name , params[:id] , params_account )
  end

  def destroy
    controller_destroy( controller_name , params[:id] )
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
