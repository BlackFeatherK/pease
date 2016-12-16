json.stock_portfolios @stock_portfolios do |stock_portfolio|
  json.partial! 'stock_portfolio' , :stock_portfolio => stock_portfolio
end