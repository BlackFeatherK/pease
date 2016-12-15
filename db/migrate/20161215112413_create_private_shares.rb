class CreatePrivateShares < ActiveRecord::Migration[5.0]
  def change
    create_table :private_shares do |t|
      t.integer :will_id , :index => true
      t.string :company
      t.integer :stock
      t.integer :amount
      t.string :heir
      t.timestamps
    end
  end
end
