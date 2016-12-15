class CreateJewelries < ActiveRecord::Migration[5.0]
  def change
    create_table :jewelries do |t|
      t.integer :will_id , :index => true
      t.integer :quantity
      t.integer :amount
      t.string :heir
      t.timestamps
    end
  end
end
