class StockPortfolio < ApplicationRecord
  belongs_to :will , :optional => true
end
