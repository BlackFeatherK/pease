json.stock_portfolios @will_names do |stock_portfolio|
  json.partial! 'stock_portfolio' , :stock_portfolio => stock_portfolio
end