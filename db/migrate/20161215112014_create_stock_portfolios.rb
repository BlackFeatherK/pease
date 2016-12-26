class CreateStockPortfolios < ActiveRecord::Migration[5.0]
  def change
    create_table :stock_portfolios do |t|
      t.integer :will_id , :index => true
      t.string :bank
      t.timestamps
    end
  end
end
