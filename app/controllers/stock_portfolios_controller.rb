class StockPortfoliosController < ApplicationController

  before_action :find_will




  protected

  def find_will
    @will = current_will
  end

  def params_stock_portfolio
    params.require(:stock_portfolio).permit(:bank , :heir)
  end
  
end
