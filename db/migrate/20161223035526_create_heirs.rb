class CreateHeirs < ActiveRecord::Migration[5.0]
  def change
    create_table :heirs do |t|
      t.string :heir_type
      t.string :name
      t.string :email
      t.integer :proportion
      t.integer :account_id
      t.integer :jewelry_id
      t.integer :motor_id
      t.integer :other_id
      t.integer :property_id
      t.integer :stock_portfolio_id
      t.integer :digital_asset_id
      t.timestamps
    end
  end
end
